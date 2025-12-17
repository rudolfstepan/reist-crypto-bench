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
	sub	sp, sp, #304
	stp	x28, x27, [sp, #272]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #288]            ; 16-byte Folded Spill
	add	x29, sp, #288
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	x8, x29, #24
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	str	x0, [x8]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x1, [x8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.le	LBB0_2
	b	LBB0_1
LBB0_1:
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	ldur	x9, [x29, #-32]
	add	x8, x8, x9
	subs	x8, x8, #1
	ldur	x9, [x29, #-32]
	sdiv	x8, x8, x9
	stur	x8, [x29, #-48]
	b	LBB0_6
LBB0_2:
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	x10, [x29, #-40]
	mov	x9, #0                          ; =0x0
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.gt	LBB0_4
	b	LBB0_3
LBB0_3:
	ldr	x9, [sp, #120]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-40]
	ldr	x9, [x9]
	subs	x8, x8, x9
	ldur	x9, [x29, #-32]
	add	x8, x8, x9
	subs	x8, x8, #1
	ldur	x9, [x29, #-32]
	sdiv	x9, x8, x9
	mov	x8, #0                          ; =0x0
	subs	x8, x8, x9
	stur	x8, [x29, #-48]
	b	LBB0_5
LBB0_4:
	stur	xzr, [x29, #-48]
	b	LBB0_5
LBB0_5:
	b	LBB0_6
LBB0_6:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-48]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	b.le	LBB0_20
	b	LBB0_7
LBB0_7:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	w0, #5                          ; =0x5
	bl	__ZNSt3__14setwB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	sub	x1, x29, #52
	stur	w8, [x29, #-52]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	w0, #15                         ; =0xf
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
	bl	__ZNSt3__14setwB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	sub	x1, x29, #56
	stur	w8, [x29, #-56]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x0
	ldr	w0, [sp, #68]                   ; 4-byte Folded Reload
	str	x1, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZNSt3__14setwB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	sub	x1, x29, #60
	stur	w8, [x29, #-60]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	mov	w0, #10                         ; =0xa
	bl	__ZNSt3__14setwB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	sub	x1, x29, #64
	stur	w8, [x29, #-64]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	sub	x0, x29, #88
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	mov	x1, #45                         ; =0x2d
	mov	w2, #45                         ; =0x2d
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Emc
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
Ltmp0:
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp1:
	b	LBB0_8
LBB0_8:
Ltmp2:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp3:
	b	LBB0_9
LBB0_9:
	sub	x0, x29, #88
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	stur	xzr, [x29, #-112]
	b	LBB0_10
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-112]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	add	x8, x8, #2
	sub	x0, x29, #120
	stur	x8, [x29, #-120]
	sub	x1, x29, #128
	mov	x8, #10                         ; =0xa
	stur	x8, [x29, #-128]
	bl	__ZNSt3__13minB8ne200100IxEERKT_S3_S3_
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	b.ge	LBB0_17
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldur	x9, [x29, #-112]
	ldur	x10, [x29, #-32]
	mul	x9, x9, x10
	subs	x8, x8, x9
	stur	x8, [x29, #-136]
	ldur	x8, [x29, #-136]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	cset	w8, gt
	sturb	w8, [x29, #-137]
	mov	w0, #5                          ; =0x5
	bl	__ZNSt3__14setwB8ne200100Ei
	add	x1, sp, #144
	str	w0, [sp, #144]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	ldur	x1, [x29, #-112]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	w0, #15                         ; =0xf
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	bl	__ZNSt3__14setwB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #140
	str	w8, [sp, #140]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	ldur	x1, [x29, #-136]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x1, x0
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__14setwB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #136
	str	w8, [sp, #136]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	ldurb	w10, [x29, #-137]
	adrp	x9, l_.str.13@PAGE
	add	x9, x9, l_.str.13@PAGEOFF
	adrp	x8, l_.str.12@PAGE
	add	x8, x8, l_.str.12@PAGEOFF
	and	w10, w10, #0x1
	ands	w10, w10, #0x1
	csel	x1, x8, x9, ne
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	w0, #10                         ; =0xa
	bl	__ZNSt3__14setwB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	add	x1, sp, #132
	str	w8, [sp, #132]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldurb	w8, [x29, #-137]
	tbz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_10 Depth=1
	mov	x8, #0                          ; =0x0
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_10 Depth=1
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #1
	stur	x8, [x29, #-112]
	b	LBB0_10
LBB0_16:
Ltmp4:
	stur	x0, [x29, #-96]
	mov	x8, x1
	stur	w8, [x29, #-100]
	sub	x0, x29, #88
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_21
LBB0_17:
	ldur	x8, [x29, #-48]
	subs	x8, x8, #10
	b.le	LBB0_19
	b	LBB0_18
LBB0_18:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-48]
	subs	x1, x8, #10
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB0_19
LBB0_19:
	b	LBB0_20
LBB0_20:
	ldp	x29, x30, [sp, #288]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #272]            ; 16-byte Folded Reload
	add	sp, sp, #304
	ret
LBB0_21:
	ldur	x0, [x29, #-96]
	bl	__Unwind_Resume
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
	.private_extern	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E ; -- Begin function _ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.globl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.weak_definition	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.p2align	2
__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E: ; @_ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t6E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x10, [sp]
	ldrsw	x1, [x10]
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14setwB8ne200100Ei ; -- Begin function _ZNSt3__14setwB8ne200100Ei
	.globl	__ZNSt3__14setwB8ne200100Ei
	.weak_definition	__ZNSt3__14setwB8ne200100Ei
	.p2align	2
__ZNSt3__14setwB8ne200100Ei:            ; @_ZNSt3__14setwB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	sub	x0, x29, #4
	bl	__ZNSt3__18__iom_t6C1B8ne200100Ei
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE ; -- Begin function _ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.globl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	2
__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ; @_ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
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
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
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
	.private_extern	__ZNSt3__13minB8ne200100IxEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB8ne200100IxEERKT_S3_S3_
	.globl	__ZNSt3__13minB8ne200100IxEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB8ne200100IxEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB8ne200100IxEERKT_S3_S3_: ; @_ZNSt3__13minB8ne200100IxEERKT_S3_S3_
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB8ne200100IxNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16test_equivalencexx         ; -- Begin function _Z16test_equivalencexx
	.p2align	2
__Z16test_equivalencexx:                ; @_Z16test_equivalencexx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	str	x1, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-16]
	sub	x0, x29, #48
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZN12ReistTreeCtxC1Ex
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	__Z12reist_linearxRK12ReistTreeCtx
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-56]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	str	x1, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-56]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	mov	w8, #1                          ; =0x1
	and	w2, w8, #0x1
	bl	__Z10reist_treexRK12ReistTreeCtxb
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-56]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-56]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.ne	LBB7_2
	b	LBB7_1
LBB7_1:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB7_3
LBB7_2:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-56]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #312                        ; =0x138
	adrp	x3, l_.str.30@PAGE
	add	x3, x3, l_.str.30@PAGEOFF
	bl	___assert_rtn
LBB7_3:
	ldur	x9, [x29, #-56]
	ldur	x10, [x29, #-40]
	mov	x8, #0                          ; =0x0
	subs	x10, x8, x10
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.le	LBB7_5
	b	LBB7_4
LBB7_4:
	ldur	x8, [x29, #-56]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	cset	w8, le
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB7_5
LBB7_5:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB7_7
	b	LBB7_6
LBB7_6:
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #316                        ; =0x13c
	adrp	x3, l_.str.31@PAGE
	add	x3, x3, l_.str.31@PAGEOFF
	bl	___assert_rtn
LBB7_7:
	b	LBB7_8
LBB7_8:
	ldur	x9, [x29, #-64]
	ldur	x10, [x29, #-40]
	mov	x8, #0                          ; =0x0
	subs	x10, x8, x10
	mov	w8, #0                          ; =0x0
	subs	x9, x9, x10
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b.le	LBB7_10
	b	LBB7_9
LBB7_9:
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	cset	w8, le
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB7_10
LBB7_10:
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB7_12
	b	LBB7_11
LBB7_11:
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #317                        ; =0x13d
	adrp	x3, l_.str.32@PAGE
	add	x3, x3, l_.str.32@PAGEOFF
	bl	___assert_rtn
LBB7_12:
	b	LBB7_13
LBB7_13:
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-56]
	subs	x8, x8, x9
	ldur	x9, [x29, #-48]
	sdiv	x8, x8, x9
	str	x8, [sp, #72]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #72]
	ldur	x10, [x29, #-48]
	mul	x9, x9, x10
	ldur	x10, [x29, #-56]
	add	x9, x9, x10
	subs	x8, x8, x9
	b.eq	LBB7_15
	b	LBB7_14
LBB7_14:
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #321                        ; =0x141
	adrp	x3, l_.str.33@PAGE
	add	x3, x3, l_.str.33@PAGEOFF
	bl	___assert_rtn
LBB7_15:
	b	LBB7_16
LBB7_16:
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	ldur	x9, [x29, #-48]
	sdiv	x8, x8, x9
	str	x8, [sp, #64]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #64]
	ldur	x10, [x29, #-48]
	mul	x9, x9, x10
	ldur	x10, [x29, #-64]
	add	x9, x9, x10
	subs	x8, x8, x9
	b.eq	LBB7_18
	b	LBB7_17
LBB7_17:
	adrp	x0, l___func__._Z16test_equivalencexx@PAGE
	add	x0, x0, l___func__._Z16test_equivalencexx@PAGEOFF
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #324                        ; =0x144
	adrp	x3, l_.str.34@PAGE
	add	x3, x3, l_.str.34@PAGEOFF
	bl	___assert_rtn
LBB7_18:
	b	LBB7_19
LBB7_19:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN12ReistTreeCtxC1Ex          ; -- Begin function _ZN12ReistTreeCtxC1Ex
	.weak_def_can_be_hidden	__ZN12ReistTreeCtxC1Ex
	.p2align	2
__ZN12ReistTreeCtxC1Ex:                 ; @_ZN12ReistTreeCtxC1Ex
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
	bl	__ZN12ReistTreeCtxC2Ex
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12reist_linearxRK12ReistTreeCtx ; -- Begin function _Z12reist_linearxRK12ReistTreeCtx
	.weak_definition	__Z12reist_linearxRK12ReistTreeCtx
	.p2align	2
__Z12reist_linearxRK12ReistTreeCtx:     ; @_Z12reist_linearxRK12ReistTreeCtx
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
	ldr	x1, [sp, #16]
	bl	__Z15approx_quotientxRK12ReistTreeCtx
	str	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	ldr	x10, [sp, #16]
	ldr	x10, [x10]
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp]
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.le	LBB9_3
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldr	x8, [sp]
	subs	x8, x8, x9
	str	x8, [sp]
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB9_1
LBB9_3:
	b	LBB9_4
LBB9_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	ldr	x10, [x9, #8]
	mov	x9, #0                          ; =0x0
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.gt	LBB9_6
	b	LBB9_5
LBB9_5:                                 ;   in Loop: Header=BB9_4 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldr	x8, [sp]
	add	x8, x8, x9
	str	x8, [sp]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB9_4
LBB9_6:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z10reist_treexRK12ReistTreeCtxb ; -- Begin function _Z10reist_treexRK12ReistTreeCtxb
	.weak_definition	__Z10reist_treexRK12ReistTreeCtxb
	.p2align	2
__Z10reist_treexRK12ReistTreeCtxb:      ; @_Z10reist_treexRK12ReistTreeCtxb
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	sturb	w2, [x29, #-25]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	__Z15approx_quotientxRK12ReistTreeCtx
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-40]
	ldur	x10, [x29, #-24]
	ldr	x10, [x10]
	mul	x9, x9, x10
	subs	x8, x8, x9
	stur	x8, [x29, #-48]
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_2
	b	LBB10_1
LBB10_1:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.64@PAGE
	add	x1, x1, l_.str.64@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.65@PAGE
	add	x1, x1, l_.str.65@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-48]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB10_2
LBB10_2:
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-24]
	bl	__Z24compute_correction_countxRK12ReistTreeCtx
	stur	x0, [x29, #-56]
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_4
	b	LBB10_3
LBB10_3:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.38@PAGE
	add	x1, x1, l_.str.38@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-56]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB10_4
LBB10_4:
	ldur	x8, [x29, #-56]
	cbnz	x8, LBB10_6
	b	LBB10_5
LBB10_5:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	b	LBB10_55
LBB10_6:
	ldur	x0, [x29, #-56]
	bl	__Z3absB8ne200100x
	subs	x8, x0, #2
	b.gt	LBB10_16
	b	LBB10_7
LBB10_7:
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_9
	b	LBB10_8
LBB10_8:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.66@PAGE
	add	x1, x1, l_.str.66@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB10_9
LBB10_9:
	b	LBB10_10
LBB10_10:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.le	LBB10_12
	b	LBB10_11
LBB10_11:                               ;   in Loop: Header=BB10_10 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	ldur	x8, [x29, #-48]
	subs	x8, x8, x9
	stur	x8, [x29, #-48]
	b	LBB10_10
LBB10_12:
	b	LBB10_13
LBB10_13:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-24]
	ldr	x10, [x9, #8]
	mov	x9, #0                          ; =0x0
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.gt	LBB10_15
	b	LBB10_14
LBB10_14:                               ;   in Loop: Header=BB10_13 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	ldur	x8, [x29, #-48]
	add	x8, x8, x9
	stur	x8, [x29, #-48]
	b	LBB10_13
LBB10_15:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	b	LBB10_55
LBB10_16:
	sub	x0, x29, #80
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	ldr	x2, [sp, #104]                  ; 8-byte Folded Reload
	ldur	x0, [x29, #-56]
	ldur	x1, [x29, #-24]
Ltmp5:
	bl	__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
Ltmp6:
	b	LBB10_17
LBB10_17:
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_28
	b	LBB10_18
LBB10_18:
Ltmp7:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.67@PAGE
	add	x1, x1, l_.str.67@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp8:
	b	LBB10_19
LBB10_19:
	sub	x0, x29, #80
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
Ltmp9:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp10:
	b	LBB10_20
LBB10_20:
Ltmp11:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.68@PAGE
	add	x1, x1, l_.str.68@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp12:
	b	LBB10_21
LBB10_21:
	ldur	x8, [x29, #-56]
	subs	x8, x8, #0
	b.le	LBB10_23
	b	LBB10_22
LBB10_22:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB10_24
LBB10_23:
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	mov	x8, #0                          ; =0x0
	subs	x8, x8, x9
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB10_24
LBB10_24:
Ltmp13:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp14:
	b	LBB10_25
LBB10_25:
Ltmp15:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.69@PAGE
	add	x1, x1, l_.str.69@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp16:
	b	LBB10_26
LBB10_26:
	b	LBB10_28
LBB10_27:
Ltmp39:
	stur	x0, [x29, #-88]
	mov	x8, x1
	stur	w8, [x29, #-92]
	sub	x0, x29, #80
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB10_56
LBB10_28:
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_31
	b	LBB10_29
LBB10_29:
Ltmp17:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.70@PAGE
	add	x1, x1, l_.str.70@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp18:
	b	LBB10_30
LBB10_30:
	b	LBB10_31
LBB10_31:
	ldurb	w8, [x29, #-25]
Ltmp19:
	sub	x0, x29, #80
	and	w1, w8, #0x1
	bl	__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp20:
	b	LBB10_32
LBB10_32:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-104]
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_37
	b	LBB10_33
LBB10_33:
Ltmp21:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.71@PAGE
	add	x1, x1, l_.str.71@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp22:
	b	LBB10_34
LBB10_34:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-104]
Ltmp23:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp24:
	b	LBB10_35
LBB10_35:
Ltmp25:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp26:
	b	LBB10_36
LBB10_36:
	b	LBB10_37
LBB10_37:
	ldur	x9, [x29, #-104]
	ldur	x8, [x29, #-48]
	subs	x8, x8, x9
	stur	x8, [x29, #-48]
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_42
	b	LBB10_38
LBB10_38:
Ltmp27:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.72@PAGE
	add	x1, x1, l_.str.72@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp28:
	b	LBB10_39
LBB10_39:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]
Ltmp29:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp30:
	b	LBB10_40
LBB10_40:
Ltmp31:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp32:
	b	LBB10_41
LBB10_41:
	b	LBB10_42
LBB10_42:
	stur	wzr, [x29, #-108]
	b	LBB10_43
LBB10_43:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.le	LBB10_45
	b	LBB10_44
LBB10_44:                               ;   in Loop: Header=BB10_43 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	ldur	x8, [x29, #-48]
	subs	x8, x8, x9
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-108]
	add	w8, w8, #1
	stur	w8, [x29, #-108]
	b	LBB10_43
LBB10_45:
	b	LBB10_46
LBB10_46:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-24]
	ldr	x10, [x9, #8]
	mov	x9, #0                          ; =0x0
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.gt	LBB10_48
	b	LBB10_47
LBB10_47:                               ;   in Loop: Header=BB10_46 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [x8]
	ldur	x8, [x29, #-48]
	add	x8, x8, x9
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-108]
	subs	w8, w8, #1
	stur	w8, [x29, #-108]
	b	LBB10_46
LBB10_48:
	ldurb	w8, [x29, #-25]
	tbz	w8, #0, LBB10_54
	b	LBB10_49
LBB10_49:
	ldur	w8, [x29, #-108]
	cbz	w8, LBB10_54
	b	LBB10_50
LBB10_50:
Ltmp33:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.73@PAGE
	add	x1, x1, l_.str.73@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp34:
	b	LBB10_51
LBB10_51:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	w1, [x29, #-108]
Ltmp35:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp36:
	b	LBB10_52
LBB10_52:
Ltmp37:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, l_.str.74@PAGE
	add	x1, x1, l_.str.74@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp38:
	b	LBB10_53
LBB10_53:
	b	LBB10_54
LBB10_54:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	sub	x0, x29, #80
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB10_55
LBB10_55:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
LBB10_56:
	ldur	x0, [x29, #-88]
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
	.uleb128 Ltmp5-Lfunc_begin1             ;   Call between Lfunc_begin1 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp38-Ltmp5                   ;   Call between Ltmp5 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin1            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp38              ;   Call between Ltmp38 and Lfunc_end1
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
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-16]
	sub	x0, x29, #48
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZN12ReistTreeCtxC1Ex
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	__Z15approx_quotientxRK12ReistTreeCtx
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-56]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-56]
	ldur	x10, [x29, #-48]
	mul	x9, x9, x10
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	__Z24compute_correction_countxRK12ReistTreeCtx
	stur	x0, [x29, #-72]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	str	x1, [sp, #64]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.38@PAGE
	add	x1, x1, l_.str.38@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-72]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-72]
	cbz	x8, LBB11_5
	b	LBB11_1
LBB11_1:
	ldur	x0, [x29, #-72]
	bl	__Z3absB8ne200100x
	stur	x0, [x29, #-80]
	stur	wzr, [x29, #-84]
	ldur	x8, [x29, #-80]
	str	x8, [sp, #96]
	b	LBB11_2
LBB11_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #96]
	subs	x8, x8, #1
	b.le	LBB11_4
	b	LBB11_3
LBB11_3:                                ;   in Loop: Header=BB11_2 Depth=1
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	ldr	x8, [sp, #96]
	add	x8, x8, #1
	mov	x9, #2                          ; =0x2
	sdiv	x8, x8, x9
	str	x8, [sp, #96]
	b	LBB11_2
LBB11_4:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.41@PAGE
	add	x1, x1, l_.str.41@PAGEOFF
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.42@PAGE
	add	x1, x1, l_.str.42@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.43@PAGE
	add	x1, x1, l_.str.43@PAGEOFF
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.44@PAGE
	add	x1, x1, l_.str.44@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.45@PAGE
	add	x1, x1, l_.str.45@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.46@PAGE
	add	x1, x1, l_.str.46@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	w8, [x29, #-84]
	add	w1, w8, #1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	str	x1, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.49@PAGE
	add	x1, x1, l_.str.49@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.50@PAGE
	add	x1, x1, l_.str.50@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str.51@PAGE
	add	x1, x1, l_.str.51@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	d0, [x29, #-80]
	scvtf	d0, d0
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	scvtf	d1, w8
	fdiv	d0, d0, d1
	str	d0, [sp, #88]
	adrp	x1, l_.str.52@PAGE
	add	x1, x1, l_.str.52@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	w0, #2                          ; =0x2
	bl	__ZNSt3__112setprecisionB8ne200100Ei
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #84
	str	w8, [sp, #84]
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	ldr	d0, [sp, #88]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	adrp	x1, l_.str.53@PAGE
	add	x1, x1, l_.str.53@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.54@PAGE
	add	x1, x1, l_.str.54@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	mov	w8, #8                          ; =0x8
	str	w8, [sp, #80]
	ldur	x8, [x29, #-80]
	ldrsw	x9, [sp, #80]
	add	x8, x8, x9
	subs	x8, x8, #1
	ldrsw	x9, [sp, #80]
	sdiv	x8, x8, x9
                                        ; kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #76]
	adrp	x1, l_.str.55@PAGE
	add	x1, x1, l_.str.55@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.56@PAGE
	add	x1, x1, l_.str.56@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #76]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.57@PAGE
	add	x1, x1, l_.str.57@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.58@PAGE
	add	x1, x1, l_.str.58@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	w1, [x29, #-84]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	b	LBB11_5
LBB11_5:
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z15approx_quotientxRK12ReistTreeCtx ; -- Begin function _Z15approx_quotientxRK12ReistTreeCtx
	.weak_definition	__Z15approx_quotientxRK12ReistTreeCtx
	.p2align	2
__Z15approx_quotientxRK12ReistTreeCtx:  ; @_Z15approx_quotientxRK12ReistTreeCtx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x10, [sp, #8]
	asr	x9, x10, #63
	ldr	x8, [sp]
	ldr	x12, [x8, #16]
	mov	x11, #0                         ; =0x0
	mul	x8, x10, x12
	mul	x9, x9, x12
	mul	x11, x10, x11
	umulh	x10, x10, x12
	add	x9, x9, x11
	add	x11, x9, x10
	ldr	x9, [sp]
	ldr	w9, [x9, #24]
	mov	x10, x9
	mov	x9, #64                         ; =0x40
	subs	x12, x10, #64
	subs	x13, x9, x10
	lsr	x9, x8, x10
	lsl	x13, x11, x13
	orr	x9, x9, x13
	asr	x11, x11, x12
	subs	x12, x10, #64
	csel	x9, x9, x11, lo
	subs	x10, x10, #0
	csel	x0, x8, x9, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z24compute_correction_countxRK12ReistTreeCtx ; -- Begin function _Z24compute_correction_countxRK12ReistTreeCtx
	.weak_definition	__Z24compute_correction_countxRK12ReistTreeCtx
	.p2align	2
__Z24compute_correction_countxRK12ReistTreeCtx: ; @_Z24compute_correction_countxRK12ReistTreeCtx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.le	LBB13_2
	b	LBB13_1
LBB13_1:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	add	x8, x8, x9
	subs	x8, x8, #1
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	sdiv	x8, x8, x9
	str	x8, [sp, #24]
	b	LBB13_6
LBB13_2:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	x10, [x9, #8]
	mov	x9, #0                          ; =0x0
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.gt	LBB13_4
	b	LBB13_3
LBB13_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	add	x8, x8, x9
	subs	x8, x8, #1
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	sdiv	x9, x8, x9
	mov	x8, #0                          ; =0x0
	subs	x8, x8, x9
	str	x8, [sp, #24]
	b	LBB13_6
LBB13_4:
	b	LBB13_5
LBB13_5:
	str	xzr, [sp, #24]
	b	LBB13_6
LBB13_6:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__Z3absB8ne200100x      ; -- Begin function _Z3absB8ne200100x
	.globl	__Z3absB8ne200100x
	.weak_definition	__Z3absB8ne200100x
	.p2align	2
__Z3absB8ne200100x:                     ; @_Z3absB8ne200100x
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x9, x8, #0
	cneg	x0, x8, le
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E ; -- Begin function _ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.globl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.weak_definition	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.p2align	2
__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E: ; @_ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x10, [sp]
	ldrsw	x1, [x10]
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base9precisionB8ne200100El
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
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
	ldur	x9, [x29, #-8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x0, x9, x10
	blr	x8
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE ; -- Begin function _ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
	.globl	__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
	.weak_definition	__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
	.p2align	2
__ZNSt3__15fixedB8ne200100ERNS_8ios_baseE: ; @_ZNSt3__15fixedB8ne200100ERNS_8ios_baseE
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
	mov	w1, #4                          ; =0x4
	mov	w2, #260                        ; =0x104
	bl	__ZNSt3__18ios_base4setfB8ne200100Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112setprecisionB8ne200100Ei ; -- Begin function _ZNSt3__112setprecisionB8ne200100Ei
	.globl	__ZNSt3__112setprecisionB8ne200100Ei
	.weak_definition	__ZNSt3__112setprecisionB8ne200100Ei
	.p2align	2
__ZNSt3__112setprecisionB8ne200100Ei:   ; @_ZNSt3__112setprecisionB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	sub	x0, x29, #4
	bl	__ZNSt3__18__iom_t5C1B8ne200100Ei
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	stur	w8, [x29, #-8]                  ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, l_.str.60@PAGE
	add	x1, x1, l_.str.60@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, l_.str.61@PAGE
	add	x1, x1, l_.str.61@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, l_.str.62@PAGE
	add	x1, x1, l_.str.62@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x0, #53                         ; =0x35
	mov	x1, #13                         ; =0xd
	stur	x1, [x29, #-24]                 ; 8-byte Folded Spill
	mov	x2, #6                          ; =0x6
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	__Z27test_independent_evaluationxxx
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #38538                      ; =0x968a
	movk	x0, #152, lsl #16
	bl	__Z27test_independent_evaluationxxx
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #157                        ; =0x9d
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__Z16test_equivalencexx
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	bl	__Z18analyze_complexityxx
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #10013                      ; =0x271d
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__Z16test_equivalencexx
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	bl	__Z18analyze_complexityxx
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #16973                      ; =0x424d
	movk	x0, #15, lsl #16
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	__Z16test_equivalencexx
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	bl	__Z18analyze_complexityxx
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #38541                      ; =0x968d
	movk	x0, #152, lsl #16
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	bl	__Z16test_equivalencexx
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	bl	__Z18analyze_complexityxx
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #-41255                     ; =0xffffffffffff5ed9
	movk	x0, #65528, lsl #16
	stur	x0, [x29, #-32]                 ; 8-byte Folded Spill
	bl	__Z16test_equivalencexx
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	bl	__Z18analyze_complexityxx
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #13006                      ; =0x32ce
	bl	__Z16test_equivalencexx
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x0, #13007                      ; =0x32cf
	bl	__Z16test_equivalencexx
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, l_.str.63@PAGE
	add	x1, x1, l_.str.63@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	w0, [x29, #-8]                  ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t6C1B8ne200100Ei ; -- Begin function _ZNSt3__18__iom_t6C1B8ne200100Ei
	.globl	__ZNSt3__18__iom_t6C1B8ne200100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t6C1B8ne200100Ei
	.p2align	2
__ZNSt3__18__iom_t6C1B8ne200100Ei:      ; @_ZNSt3__18__iom_t6C1B8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__18__iom_t6C2B8ne200100Ei
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t6C2B8ne200100Ei ; -- Begin function _ZNSt3__18__iom_t6C2B8ne200100Ei
	.globl	__ZNSt3__18__iom_t6C2B8ne200100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t6C2B8ne200100Ei
	.p2align	2
__ZNSt3__18__iom_t6C2B8ne200100Ei:      ; @_ZNSt3__18__iom_t6C2B8ne200100Ei
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
	.private_extern	__ZNSt3__13minB8ne200100IxNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB8ne200100IxNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB8ne200100IxNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB8ne200100IxNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB8ne200100IxNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB8ne200100IxNS_6__lessIvvEEEERKT_S5_S5_T0_
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
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne200100IxxEEbRKT_RKT0_
	tbz	w0, #0, LBB22_2
	b	LBB22_1
LBB22_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB22_3
LBB22_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB22_3
LBB22_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB8ne200100IxxEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB8ne200100IxxEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB8ne200100IxxEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB8ne200100IxxEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB8ne200100IxxEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB8ne200100IxxEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w0, lt
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN12ReistTreeCtxC2Ex          ; -- Begin function _ZN12ReistTreeCtxC2Ex
	.weak_def_can_be_hidden	__ZN12ReistTreeCtxC2Ex
	.p2align	2
__ZN12ReistTreeCtxC2Ex:                 ; @_ZN12ReistTreeCtxC2Ex
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x9, [sp, #16]
	mov	x8, #1                          ; =0x1
	asr	x9, x9, #1
	str	x9, [x0, #8]
	mov	w9, #32                         ; =0x20
	str	w9, [x0, #24]
	ldr	d0, [x0]
	scvtf	d1, d0
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	str	d0, [sp, #8]
	ldr	d0, [sp, #8]
	ldr	w9, [x0, #24]
                                        ; kill: def $x9 killed $w9
	lsl	x8, x8, x9
	ucvtf	d1, x8
	fmul	d0, d0, d1
	fcvtzu	x8, d0
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE ; -- Begin function _Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
	.weak_definition	__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
	.p2align	2
__Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE: ; @_Z27evaluate_corrections_simplexRK12ReistTreeCtxRNSt3__16vectorIxNS2_9allocatorIxEEEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__Z3absB8ne200100x
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	b.le	LBB26_6
	b	LBB26_1
LBB26_1:
	str	xzr, [sp, #32]
	b	LBB26_2
LBB26_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ge	LBB26_5
	b	LBB26_3
LBB26_3:                                ;   in Loop: Header=BB26_2 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx
	b	LBB26_4
LBB26_4:                                ;   in Loop: Header=BB26_2 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB26_2
LBB26_5:
	b	LBB26_13
LBB26_6:
	ldur	x8, [x29, #-8]
	tbz	x8, #63, LBB26_12
	b	LBB26_7
LBB26_7:
	str	xzr, [sp, #24]
	b	LBB26_8
LBB26_8:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldur	x10, [x29, #-8]
	mov	x9, #0                          ; =0x0
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.ge	LBB26_11
	b	LBB26_9
LBB26_9:                                ;   in Loop: Header=BB26_8 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x9, [x8]
	mov	x8, #0                          ; =0x0
	subs	x8, x8, x9
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	b	LBB26_10
LBB26_10:                               ;   in Loop: Header=BB26_8 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB26_8
LBB26_11:
	b	LBB26_12
LBB26_12:
	b	LBB26_13
LBB26_13:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb ; -- Begin function _Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
	.weak_definition	__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
	.p2align	2
__Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb: ; @_Z11tree_reduceRKNSt3__16vectorIxNS_9allocatorIxEEEEb
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #336
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-32]
	sturb	w1, [x29, #-33]
	ldur	x0, [x29, #-32]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE5emptyB8ne200100Ev
	tbz	w0, #0, LBB28_2
	b	LBB28_1
LBB28_1:
	stur	xzr, [x29, #-24]
	b	LBB28_49
LBB28_2:
	ldur	x0, [x29, #-32]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	subs	x8, x0, #1
	b.ne	LBB28_4
	b	LBB28_3
LBB28_3:
	ldur	x0, [x29, #-32]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	ldr	x8, [x0]
	stur	x8, [x29, #-24]
	b	LBB28_49
LBB28_4:
	ldur	x1, [x29, #-32]
	sub	x0, x29, #64
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100ERKS3_
	stur	wzr, [x29, #-68]
	b	LBB28_5
LBB28_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_14 Depth 2
                                        ;     Child Loop BB28_30 Depth 2
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	subs	x8, x0, #1
	b.ls	LBB28_38
	b	LBB28_6
LBB28_6:                                ;   in Loop: Header=BB28_5 Depth=1
	sub	x0, x29, #96
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100Ev
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	mov	x9, #2                          ; =0x2
	udiv	x1, x8, x9
Ltmp58:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm
Ltmp59:
	b	LBB28_7
LBB28_7:                                ;   in Loop: Header=BB28_5 Depth=1
	ldurb	w8, [x29, #-33]
	tbz	w8, #0, LBB28_29
	b	LBB28_8
LBB28_8:                                ;   in Loop: Header=BB28_5 Depth=1
Ltmp60:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.76@PAGE
	add	x1, x1, l_.str.76@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp61:
	b	LBB28_9
LBB28_9:                                ;   in Loop: Header=BB28_5 Depth=1
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	ldur	w1, [x29, #-68]
Ltmp62:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp63:
	b	LBB28_10
LBB28_10:                               ;   in Loop: Header=BB28_5 Depth=1
Ltmp64:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.77@PAGE
	add	x1, x1, l_.str.77@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp65:
	b	LBB28_11
LBB28_11:                               ;   in Loop: Header=BB28_5 Depth=1
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
Ltmp66:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp67:
	b	LBB28_12
LBB28_12:                               ;   in Loop: Header=BB28_5 Depth=1
Ltmp68:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.78@PAGE
	add	x1, x1, l_.str.78@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp69:
	b	LBB28_13
LBB28_13:                               ;   in Loop: Header=BB28_5 Depth=1
	stur	xzr, [x29, #-120]
	b	LBB28_14
LBB28_14:                               ;   Parent Loop BB28_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-120]
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	sub	x0, x29, #128
	stur	x8, [x29, #-128]
	sub	x1, x29, #136
	mov	x8, #4                          ; =0x4
	stur	x8, [x29, #-136]
Ltmp70:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp71:
	b	LBB28_15
LBB28_15:                               ;   in Loop: Header=BB28_14 Depth=2
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #104]                  ; 8-byte Folded Reload
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	LBB28_24
	b	LBB28_16
LBB28_16:                               ;   in Loop: Header=BB28_14 Depth=2
	ldur	x1, [x29, #-120]
	sub	x0, x29, #64
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	ldr	x1, [x0]
Ltmp80:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp81:
	b	LBB28_17
LBB28_17:                               ;   in Loop: Header=BB28_14 Depth=2
	ldur	x8, [x29, #-120]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	sub	x0, x29, #144
	stur	x8, [x29, #-144]
	sub	x1, x29, #152
	mov	x8, #4                          ; =0x4
	stur	x8, [x29, #-152]
Ltmp82:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp83:
	b	LBB28_18
LBB28_18:                               ;   in Loop: Header=BB28_14 Depth=2
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x9, [x9]
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.hs	LBB28_22
	b	LBB28_19
LBB28_19:                               ;   in Loop: Header=BB28_14 Depth=2
Ltmp84:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.79@PAGE
	add	x1, x1, l_.str.79@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp85:
	b	LBB28_20
LBB28_20:                               ;   in Loop: Header=BB28_14 Depth=2
	b	LBB28_22
LBB28_21:
Ltmp86:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB28_48
LBB28_22:                               ;   in Loop: Header=BB28_14 Depth=2
	b	LBB28_23
LBB28_23:                               ;   in Loop: Header=BB28_14 Depth=2
	ldur	x8, [x29, #-120]
	add	x8, x8, #1
	stur	x8, [x29, #-120]
	b	LBB28_14
LBB28_24:                               ;   in Loop: Header=BB28_5 Depth=1
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	subs	x8, x0, #4
	b.ls	LBB28_27
	b	LBB28_25
LBB28_25:                               ;   in Loop: Header=BB28_5 Depth=1
Ltmp72:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.80@PAGE
	add	x1, x1, l_.str.80@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp73:
	b	LBB28_26
LBB28_26:                               ;   in Loop: Header=BB28_5 Depth=1
	b	LBB28_27
LBB28_27:                               ;   in Loop: Header=BB28_5 Depth=1
Ltmp74:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.81@PAGE
	add	x1, x1, l_.str.81@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp75:
	b	LBB28_28
LBB28_28:                               ;   in Loop: Header=BB28_5 Depth=1
	b	LBB28_29
LBB28_29:                               ;   in Loop: Header=BB28_5 Depth=1
	str	xzr, [sp, #160]
	b	LBB28_30
LBB28_30:                               ;   Parent Loop BB28_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #160]
	add	x8, x8, #1
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.hs	LBB28_34
	b	LBB28_31
LBB28_31:                               ;   in Loop: Header=BB28_30 Depth=2
	ldr	x1, [sp, #160]
	sub	x0, x29, #64
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #160]
	add	x1, x8, #1
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	add	x8, x8, x9
	add	x1, sp, #152
	str	x8, [sp, #152]
Ltmp78:
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
Ltmp79:
	b	LBB28_32
LBB28_32:                               ;   in Loop: Header=BB28_30 Depth=2
	b	LBB28_33
LBB28_33:                               ;   in Loop: Header=BB28_30 Depth=2
	ldr	x8, [sp, #160]
	add	x8, x8, #2
	str	x8, [sp, #160]
	b	LBB28_30
LBB28_34:                               ;   in Loop: Header=BB28_5 Depth=1
	sub	x0, x29, #64
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x9, #2                          ; =0x2
	udiv	x8, x0, x9
	mul	x8, x8, x9
	subs	x8, x0, x8
	subs	x8, x8, #1
	b.ne	LBB28_37
	b	LBB28_35
LBB28_35:                               ;   in Loop: Header=BB28_5 Depth=1
	sub	x0, x29, #64
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE4backB8ne200100Ev
	mov	x1, x0
Ltmp76:
	sub	x0, x29, #96
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx
Ltmp77:
	b	LBB28_36
LBB28_36:                               ;   in Loop: Header=BB28_5 Depth=1
	b	LBB28_37
LBB28_37:                               ;   in Loop: Header=BB28_5 Depth=1
	sub	x0, x29, #64
	sub	x1, x29, #96
	str	x1, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100EOS3_
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB28_5
LBB28_38:
	ldurb	w8, [x29, #-33]
	tbz	w8, #0, LBB28_47
	b	LBB28_39
LBB28_39:
	ldur	w8, [x29, #-68]
	subs	w8, w8, #0
	b.le	LBB28_47
	b	LBB28_40
LBB28_40:
Ltmp47:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.76@PAGE
	add	x1, x1, l_.str.76@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp48:
	b	LBB28_41
LBB28_41:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	w1, [x29, #-68]
Ltmp49:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp50:
	b	LBB28_42
LBB28_42:
Ltmp51:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.82@PAGE
	add	x1, x1, l_.str.82@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp52:
	b	LBB28_43
LBB28_43:
	sub	x0, x29, #64
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
Ltmp53:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp54:
	b	LBB28_44
LBB28_44:
Ltmp55:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.81@PAGE
	add	x1, x1, l_.str.81@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp56:
	b	LBB28_45
LBB28_45:
	b	LBB28_47
LBB28_46:
Ltmp57:
	stur	x0, [x29, #-104]
	mov	x8, x1
	stur	w8, [x29, #-108]
	b	LBB28_48
LBB28_47:
	sub	x0, x29, #64
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB28_49
LBB28_48:
	sub	x0, x29, #64
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	b	LBB28_50
LBB28_49:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB28_50:
	ldur	x0, [x29, #-104]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table28:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp58-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp58
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp77-Ltmp58                  ;   Call between Ltmp58 and Ltmp77
	.uleb128 Ltmp86-Lfunc_begin2            ;     jumps to Ltmp86
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp56-Ltmp47                  ;   Call between Ltmp47 and Ltmp56
	.uleb128 Ltmp57-Lfunc_begin2            ;     jumps to Ltmp57
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Lfunc_end2-Ltmp56              ;   Call between Ltmp56 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEED1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100Ev
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
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIxEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIxEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIxEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIxEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIxEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIxEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIxEC1B8ne200100Ev
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
	bl	__ZNSt3__19allocatorIxEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIxEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIxEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIxEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIxEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIxEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIxEC2B8ne200100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIxEEEC2B8ne200100Ev
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
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
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE7reserveEm
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB35_6
	b	LBB35_1
LBB35_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB35_3
	b	LBB35_2
LBB35_2:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
LBB35_3:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x3, x8, #16
	add	x0, sp, #56
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp88:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
Ltmp89:
	b	LBB35_4
LBB35_4:
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	b	LBB35_6
LBB35_5:
Ltmp90:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #56
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	b	LBB35_7
LBB35_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB35_7:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table35:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp88-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp88
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp88-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp89-Ltmp88                  ;   Call between Ltmp88 and Ltmp89
	.uleb128 Ltmp90-Lfunc_begin3            ;     jumps to Ltmp90
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp89-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp89              ;   Call between Ltmp89 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100ERKx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJRKxEEEvDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE9push_backB8ne200100EOx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE22__base_destruct_at_endB8ne200100EPx
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB38_1
LBB38_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB38_4
	b	LBB38_2
LBB38_2:                                ;   in Loop: Header=BB38_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp91:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
Ltmp92:
	b	LBB38_3
LBB38_3:                                ;   in Loop: Header=BB38_1 Depth=1
	b	LBB38_1
LBB38_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB38_5:
Ltmp93:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table38:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp91-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp92-Ltmp91                  ;   Call between Ltmp91 and Ltmp92
	.uleb128 Ltmp93-Lfunc_begin4            ;     jumps to Ltmp93
	.byte	1                               ;   On action: 1
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
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_shrinkB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
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
	.private_extern	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx ; -- Begin function _ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	.globl	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	.weak_definition	__ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	.p2align	2
__ZNSt3__19allocatorIxE7destroyB8ne200100EPx: ; @_ZNSt3__19allocatorIxE7destroyB8ne200100EPx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp98:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp99:
	b	LBB45_1
LBB45_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB45_2:
Ltmp100:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table45:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp98-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp99-Ltmp98                  ;   Call between Ltmp98 and Ltmp99
	.uleb128 Ltmp100-Lfunc_begin5           ;     jumps to Ltmp100
	.byte	1                               ;   On action: 1
Lcst_end5:
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
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.75@PAGE
	add	x0, x0, l_.str.75@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #8                         ; =0x8
	sdiv	x11, x10, x11
	mov	x10, #0                         ; =0x0
	subs	x10, x10, x11
	add	x9, x9, x10, lsl #3
	str	x9, [sp, #24]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #8]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, x8, #16
	bl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [x0]
	str	x8, [x0, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #16
	add	x1, x8, #24
	bl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
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
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB8ne200100ImEERKT_S3_S3_: ; @_ZNSt3__13minB8ne200100ImEERKT_S3_S3_
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
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
	bl	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
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
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB53_2
	b	LBB53_1
LBB53_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB53_3
LBB53_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB53_3
LBB53_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w0, lo
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorIxE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #2305843009213693951        ; =0x1fffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807        ; =0x7fffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne200100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne200100EPKc
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp103:
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp104:
	b	LBB57_1
LBB57_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB57_2:
Ltmp105:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB57_3
LBB57_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table57:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp103-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp103
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp104-Ltmp103                ;   Call between Ltmp103 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin6           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp104-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp104             ;   Call between Ltmp104 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
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
	bl	__ZNSt12length_errorC2B8ne200100EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B8ne200100EPKc ; -- Begin function _ZNSt12length_errorC2B8ne200100EPKc
	.globl	__ZNSt12length_errorC2B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B8ne200100EPKc
	.p2align	2
__ZNSt12length_errorC2B8ne200100EPKc:   ; @_ZNSt12length_errorC2B8ne200100EPKc
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
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC2EmmS3_
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
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	mov	x8, x9
	stur	x8, [x29, #-8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x9, #24]
	ldr	x8, [sp, #24]
	str	x8, [x9, #32]
	ldur	x8, [x29, #-24]
	cbnz	x8, LBB60_2
	b	LBB60_1
LBB60_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB60_3
LBB60_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	b	LBB60_3
LBB60_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	ldr	x10, [sp, #32]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #16]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-24]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #24]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIxE8allocateB8ne200100Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIxE8allocateB8ne200100Em ; -- Begin function _ZNSt3__19allocatorIxE8allocateB8ne200100Em
	.globl	__ZNSt3__19allocatorIxE8allocateB8ne200100Em
	.weak_definition	__ZNSt3__19allocatorIxE8allocateB8ne200100Em
	.p2align	2
__ZNSt3__19allocatorIxE8allocateB8ne200100Em: ; @_ZNSt3__19allocatorIxE8allocateB8ne200100Em
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
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB62_2
	b	LBB62_1
LBB62_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
LBB62_2:
	ldr	x0, [sp, #16]
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne200100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne200100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB8ne200100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne200100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne200100v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB8ne200100IxEEPT_NS_15__element_countEm
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
	lsl	x8, x8, #3
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	.globl	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm: ; @_ZNSt3__121__libcpp_operator_newB8ne200100IxEEPvm
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
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_ ; -- Begin function _ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	.globl	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	.weak_definition	__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	.p2align	2
__ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_: ; @_ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIxEEPxEEvRT_T0_S6_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x9, x8, x9
	mov	x8, #8                          ; =0x8
	sdiv	x9, x9, x8
	mul	x2, x8, x9
	bl	_memcpy
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB8ne200100IPxEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED2Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	cbz	x8, LBB70_3
	b	LBB70_1
LBB70_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp109:
	bl	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp110:
	b	LBB70_2
LBB70_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	b	LBB70_3
LBB70_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB70_4:
Ltmp111:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table70:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp109-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp110-Ltmp109                ;   Call between Ltmp109 and Ltmp110
	.uleb128 Ltmp111-Lfunc_begin7           ;     jumps to Ltmp111
	.byte	1                               ;   On action: 1
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE5clearB8ne200100Ev
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
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
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
	bl	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev: ; @_ZNKSt3__114__split_bufferIxRNS_9allocatorIxEEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.weak_definition	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPx
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIxRNS_9allocatorIxEEE17__destruct_at_endB8ne200100EPxNS_17integral_constantIbLb0EEE
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB75_1
LBB75_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.eq	LBB75_4
	b	LBB75_2
LBB75_2:                                ;   in Loop: Header=BB75_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #32]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp113:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE7destroyB8ne200100IxLi0EEEvRS2_PT_
Ltmp114:
	b	LBB75_3
LBB75_3:                                ;   in Loop: Header=BB75_1 Depth=1
	b	LBB75_1
LBB75_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB75_5:
Ltmp115:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table75:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp113-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp114-Ltmp113                ;   Call between Ltmp113 and Ltmp114
	.uleb128 Ltmp115-Lfunc_begin8           ;     jumps to Ltmp115
	.byte	1                               ;   On action: 1
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm ; -- Begin function _ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	.globl	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	.weak_definition	__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
	.p2align	2
__ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm: ; @_ZNSt3__19allocatorIxE10deallocateB8ne200100EPxm
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
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100IxEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
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
	ldr	x8, [sp, #16]
	lsl	x8, x8, #3
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPxEEEvDpT_
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
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJRKxEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJRKxEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJRKxEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJRKxEEEvDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJRKxEEEvDpOT_
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
	ldur	x9, [x29, #-8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	LBB79_2
	b	LBB79_1
LBB79_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJRKxEEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB79_3
LBB79_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJRKxEEEPxDpOT_
	str	x0, [sp, #8]
	b	LBB79_3
LBB79_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJRKxEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJRKxEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJRKxEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJRKxEEEvDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJRKxEEEvDpOT_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #24
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp116:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
Ltmp117:
	b	LBB80_1
LBB80_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB80_2:
Ltmp118:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB80_3
LBB80_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table80:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ; >> Call Site 1 <<
	.uleb128 Ltmp116-Lfunc_begin9           ;   Call between Lfunc_begin9 and Ltmp116
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp116-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp117-Ltmp116                ;   Call between Ltmp116 and Ltmp117
	.uleb128 Ltmp118-Lfunc_begin9           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp117-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp117             ;   Call between Ltmp117 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJRKxEEEPxDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJRKxEEEPxDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJRKxEEEPxDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJRKxEEEPxDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJRKxEEEPxDpOT_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp119:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
Ltmp120:
	b	LBB81_1
LBB81_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #8
	str	x8, [sp, #56]
Ltmp121:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
Ltmp122:
	b	LBB81_2
LBB81_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB81_3:
Ltmp123:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	b	LBB81_4
LBB81_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table81:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp119-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp119
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp122-Ltmp119                ;   Call between Ltmp119 and Ltmp122
	.uleb128 Ltmp123-Lfunc_begin10          ;     jumps to Ltmp123
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp122            ;   Call between Ltmp122 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJRKxELi0EEEvRS2_PT_DpOT0_
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
	bl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIxE9constructB8ne200100IxJRKxEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
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
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ls	LBB88_2
	b	LBB88_1
LBB88_1:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
LBB88_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	b.lo	LBB88_4
	b	LBB88_3
LBB88_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB88_5
LBB88_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB88_5
LBB88_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB8ne200100ImEERKT_S3_S3_: ; @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
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
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB90_2
	b	LBB90_1
LBB90_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB90_3
LBB90_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB90_3
LBB90_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE12emplace_backIJxEEEvDpOT_
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
	ldur	x9, [x29, #-8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.hs	LBB91_2
	b	LBB91_1
LBB91_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB91_3
LBB91_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
	str	x0, [sp, #8]
	b	LBB91_3
LBB91_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE22__construct_one_at_endB8ne200100IJxEEEvDpOT_
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #24
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp127:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
Ltmp128:
	b	LBB92_1
LBB92_1:
	add	x0, sp, #24
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB92_2:
Ltmp129:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	add	x0, sp, #24
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB92_3
LBB92_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table92:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ; >> Call Site 1 <<
	.uleb128 Ltmp127-Lfunc_begin11          ;   Call between Lfunc_begin11 and Ltmp127
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp127-Lfunc_begin11          ; >> Call Site 2 <<
	.uleb128 Ltmp128-Ltmp127                ;   Call between Ltmp127 and Ltmp128
	.uleb128 Ltmp129-Lfunc_begin11          ;     jumps to Ltmp129
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp128-Lfunc_begin11          ; >> Call Site 3 <<
	.uleb128 Lfunc_end11-Ltmp128            ;   Call between Ltmp128 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE24__emplace_back_slow_pathIJxEEEPxDpOT_
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE11__recommendB8ne200100Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	add	x0, sp, #40
	add	x3, x8, #16
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEEC1EmmS3_
	ldr	x0, [sp, #56]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldur	x2, [x29, #-16]
Ltmp130:
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
Ltmp131:
	b	LBB93_1
LBB93_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	ldr	x8, [sp, #56]
	add	x8, x8, #8
	str	x8, [sp, #56]
Ltmp132:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE26__swap_out_circular_bufferERNS_14__split_bufferIxRS2_EE
Ltmp133:
	b	LBB93_2
LBB93_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB93_3:
Ltmp134:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIxRNS_9allocatorIxEEED1Ev
	b	LBB93_4
LBB93_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table93:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp130-Lfunc_begin12          ;   Call between Lfunc_begin12 and Ltmp130
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp130-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp133-Ltmp130                ;   Call between Ltmp130 and Ltmp133
	.uleb128 Ltmp134-Lfunc_begin12          ;     jumps to Ltmp134
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp133-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Lfunc_end12-Ltmp133            ;   Call between Ltmp133 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE9constructB8ne200100IxJxELi0EEEvRS2_PT_DpOT0_
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
	bl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIxE9constructB8ne200100IxJxEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEE5emptyB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEE5emptyB8ne200100Ev
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE5emptyB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEE5emptyB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEE5emptyB8ne200100Ev: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEE5emptyB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.globl	__ZNKSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em: ; @_ZNKSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100ERKS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100ERKS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100ERKS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100ERKS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEC1B8ne200100ERKS3_
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100ERKS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEixB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE4backB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE4backB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE4backB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE4backB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE4backB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE4backB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	subs	x0, x8, #8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100EOS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100EOS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100EOS3_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100EOS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100EOS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEaSB8ne200100EOS3_
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100ERKS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100ERKS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100ERKS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100ERKS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEEC2B8ne200100ERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE4sizeB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__init_with_sizeB8ne200100IPxS5_EEvT_T0_m
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIxEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIxEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIxEEE37select_on_container_copy_constructionB8ne200100IS2_vLi0EEES2_RKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__init_with_sizeB8ne200100IPxS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE16__init_with_sizeB8ne200100IPxS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__init_with_sizeB8ne200100IPxS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE16__init_with_sizeB8ne200100IPxS5_EEvT_T0_m: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE16__init_with_sizeB8ne200100IPxS5_EEvT_T0_m
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
	ldr	x0, [sp, #40]
	add	x8, sp, #48
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.ls	LBB104_5
	b	LBB104_1
LBB104_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp141:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
Ltmp142:
	b	LBB104_2
LBB104_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
Ltmp143:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPxS5_EEvT_T0_m
Ltmp144:
	b	LBB104_3
LBB104_3:
	b	LBB104_5
LBB104_4:
Ltmp145:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #48
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev
	b	LBB104_6
LBB104_5:
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEE10__completeB8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB104_6:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table104:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp141-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp141
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp144-Ltmp141                ;   Call between Ltmp141 and Ltmp144
	.uleb128 Ltmp145-Lfunc_begin13          ;     jumps to Ltmp145
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp144-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp144            ;   Call between Ltmp144 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC1B8ne200100ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
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
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE11__vallocateB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8max_sizeB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB107_2
	b	LBB107_1
LBB107_1:
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne200100Ev
LBB107_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIxEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldr	x9, [sp, #24]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPxS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPxS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPxS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPxS5_EEvT_T0_m: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endIPxS5_EEvT_T0_m
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-32]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp146:
	add	x0, x8, #16
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPxS3_S3_EET2_RT_T0_T1_S4_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp147:
	b	LBB108_1
LBB108_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB108_2:
Ltmp148:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB108_3
LBB108_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table108:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14    ; >> Call Site 1 <<
	.uleb128 Ltmp146-Lfunc_begin14          ;   Call between Lfunc_begin14 and Ltmp146
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp146-Lfunc_begin14          ; >> Call Site 2 <<
	.uleb128 Ltmp147-Ltmp146                ;   Call between Ltmp146 and Ltmp147
	.uleb128 Ltmp148-Lfunc_begin14          ;     jumps to Ltmp148
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin14          ; >> Call Site 3 <<
	.uleb128 Lfunc_end14-Ltmp147            ;   Call between Ltmp147 and Lfunc_end14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEE10__completeB8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEE10__completeB8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED1B8ne200100Ev
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC1B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC1B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC1B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC1B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC1B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC1B8ne200100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC2B8ne200100ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC2B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC2B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC2B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC2B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC2B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEEC2B8ne200100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [x0]
	strb	wzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC2B8ne200100ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPxS3_S3_EET2_RT_T0_T1_S4_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPxS3_S3_EET2_RT_T0_T1_S4_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPxS3_S3_EET2_RT_T0_T1_S4_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPxS3_S3_EET2_RT_T0_T1_S4_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPxS3_S3_EET2_RT_T0_T1_S4_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne200100INS_9allocatorIxEEPxS3_S3_EET2_RT_T0_T1_S4_
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
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEExxLi0EEEPT1_RT_PT0_S8_S4_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_
	.globl	__ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_: ; @_ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEExxLi0EEEPT1_RT_PT0_S8_S4_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEExxLi0EEEPT1_RT_PT0_S8_S4_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEExxLi0EEEPT1_RT_PT0_S8_S4_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEExxLi0EEEPT1_RT_PT0_S8_S4_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEExxLi0EEEPT1_RT_PT0_S8_S4_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorIxEExxLi0EEEPT1_RT_PT0_S8_S4_
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
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB8ne200100IPxS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
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
	bl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
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
	ldr	x1, [sp, #16]
Ltmp152:
	bl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp153:
	b	LBB118_1
LBB118_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB118_2:
Ltmp154:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table118:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp152-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp153-Ltmp152                ;   Call between Ltmp152 and Ltmp153
	.uleb128 Ltmp154-Lfunc_begin15          ;     jumps to Ltmp154
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.globl	__ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_: ; @_ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPxS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPxS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPxS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPxS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPxS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPxS1_EC1B8ne200100IS1_S1_Li0EEEOT_OT0_
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPxS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPxS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPxS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPxS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPxS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPxS1_EC2B8ne200100IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB8ne200100IPxS1_EET0_T_S3_S2_ ; -- Begin function _ZNSt3__14copyB8ne200100IPxS1_EET0_T_S3_S2_
	.globl	__ZNSt3__14copyB8ne200100IPxS1_EET0_T_S3_S2_
	.weak_definition	__ZNSt3__14copyB8ne200100IPxS1_EET0_T_S3_S2_
	.p2align	2
__ZNSt3__14copyB8ne200100IPxS1_EET0_T_S3_S2_: ; @_ZNSt3__14copyB8ne200100IPxS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB8ne200100IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB8ne200100IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_ ; -- Begin function _ZNSt3__16__copyB8ne200100IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.globl	__ZNSt3__16__copyB8ne200100IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.weak_definition	__ZNSt3__16__copyB8ne200100IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.p2align	2
__ZNSt3__16__copyB8ne200100IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: ; @_ZNSt3__16__copyB8ne200100IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPxS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPxS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_ ; -- Begin function _ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPxS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.globl	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPxS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.weak_definition	__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPxS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.p2align	2
__ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPxS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_: ; @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__copy_implEPxS2_S2_Li0EEENS_4pairIT0_T2_EES4_T1_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB8ne200100IPxS1_EENS_4pairIT0_S3_EET_S5_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne200100IPxNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__111__copy_implclB8ne200100IxxLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne200100IPxS1_EET_S2_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne200100IPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__copy_implclB8ne200100IxxLi0EEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNKSt3__111__copy_implclB8ne200100IxxLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNKSt3__111__copy_implclB8ne200100IxxLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNKSt3__111__copy_implclB8ne200100IxxLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNKSt3__111__copy_implclB8ne200100IxxLi0EEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNKSt3__111__copy_implclB8ne200100IxxLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB8ne200100IxxEENS_4pairIPT_PT0_EES3_S3_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne200100IPxS1_EET_S2_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne200100IPxS1_EET_S2_T0_
	.globl	__ZNSt3__114__rewrap_rangeB8ne200100IPxS1_EET_S2_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne200100IPxS1_EET_S2_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne200100IPxS1_EET_S2_T0_: ; @_ZNSt3__114__rewrap_rangeB8ne200100IPxS1_EET_S2_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB8ne200100IPxS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne200100IxxEENS_4pairIPT_PT0_EES3_S3_S5_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne200100IxxEENS_4pairIPT_PT0_EES3_S3_S5_
	.globl	__ZNSt3__119__copy_trivial_implB8ne200100IxxEENS_4pairIPT_PT0_EES3_S3_S5_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne200100IxxEENS_4pairIPT_PT0_EES3_S3_S5_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne200100IxxEENS_4pairIPT_PT0_EES3_S3_S5_: ; @_ZNSt3__119__copy_trivial_implB8ne200100IxxEENS_4pairIPT_PT0_EES3_S3_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB8ne200100IxxLi0EEEPT_S2_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne200100IRPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne200100IxxLi0EEEPT_S2_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne200100IxxLi0EEEPT_S2_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne200100IxxLi0EEEPT_S2_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne200100IxxLi0EEEPT_S2_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne200100IxxLi0EEEPT_S2_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne200100IxxLi0EEEPT_S2_PT0_NS_15__element_countE
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
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	b.ls	LBB128_2
	b	LBB128_1
LBB128_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #3
	add	x2, x8, #8
	bl	_memmove
	b	LBB128_2
LBB128_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne200100IRPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne200100IRPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.globl	__ZNSt3__19make_pairB8ne200100IRPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne200100IRPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne200100IRPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_: ; @_ZNSt3__19make_pairB8ne200100IRPxS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPxS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPxS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPxS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPxS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPxS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPxS1_EC1B8ne200100IRS1_S1_Li0EEEOT_OT0_
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPxS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPxS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPxS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPxS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPxS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPxS1_EC2B8ne200100IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_: ; @_ZNSt3__118__unwrap_iter_implIPxLb1EE8__unwrapB8ne200100ES1_
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
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPxLb1EE8__rewrapB8ne200100ES1_S1_
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
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB8ne200100IxEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8                         ; =0x8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED2B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED2B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED2B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED2B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIxNS_9allocatorIxEEE16__destroy_vectorEED2B8ne200100Ev
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbnz	w8, #0, LBB134_3
	b	LBB134_1
LBB134_1:
Ltmp157:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
Ltmp158:
	b	LBB134_2
LBB134_2:
	b	LBB134_3
LBB134_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB134_4:
Ltmp159:
	bl	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table134:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp157-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp158-Ltmp157                ;   Call between Ltmp157 and Ltmp158
	.uleb128 Ltmp159-Lfunc_begin16          ;     jumps to Ltmp159
	.byte	1                               ;   On action: 1
Lcst_end16:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB135_2
	b	LBB135_1
LBB135_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	b	LBB135_2
LBB135_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
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
	ldr	x0, [sp, #16]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE13__vdeallocateEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	cbz	x8, LBB137_2
	b	LBB137_1
LBB137_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE5clearB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE17__annotate_deleteB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x0, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIxNS_9allocatorIxEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIxEEE10deallocateB8ne200100ERS2_Pxm
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	str	xzr, [x8, #8]
	str	xzr, [x8]
	b	LBB137_2
LBB137_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_NS_17integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_NS_17integral_constantIbLb1EEE ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_NS_17integral_constantIbLb1EEE
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_NS_17integral_constantIbLb1EEE
	.weak_definition	__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_NS_17integral_constantIbLb1EEE
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_NS_17integral_constantIbLb1EEE: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEE19__move_assign_allocB8ne200100ERS3_NS_17integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
	.globl	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev: ; @_ZNSt3__16vectorIxNS_9allocatorIxEEED2B8ne200100Ev
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp161:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorC1B8ne200100ERS3_
Ltmp162:
	b	LBB140_1
LBB140_1:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIxNS_9allocatorIxEEE16__destroy_vectorclB8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB140_2:
Ltmp163:
	bl	___clang_call_terminate
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table140:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp161-Lfunc_begin17          ; >> Call Site 1 <<
	.uleb128 Ltmp162-Ltmp161                ;   Call between Ltmp161 and Ltmp162
	.uleb128 Ltmp163-Lfunc_begin17          ;     jumps to Ltmp163
	.byte	1                               ;   On action: 1
Lcst_end17:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__18ios_base4setfB8ne200100Ejj ; -- Begin function _ZNSt3__18ios_base4setfB8ne200100Ejj
	.globl	__ZNSt3__18ios_base4setfB8ne200100Ejj
	.weak_definition	__ZNSt3__18ios_base4setfB8ne200100Ejj
	.p2align	2
__ZNSt3__18ios_base4setfB8ne200100Ejj:  ; @_ZNSt3__18ios_base4setfB8ne200100Ejj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	w8, [x0, #8]
	str	w8, [sp, #12]
	ldr	w1, [sp, #16]
	bl	__ZNSt3__18ios_base6unsetfB8ne200100Ej
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w10, [sp, #16]
	and	w10, w8, w10
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base6unsetfB8ne200100Ej ; -- Begin function _ZNSt3__18ios_base6unsetfB8ne200100Ej
	.globl	__ZNSt3__18ios_base6unsetfB8ne200100Ej
	.weak_definition	__ZNSt3__18ios_base6unsetfB8ne200100Ej
	.p2align	2
__ZNSt3__18ios_base6unsetfB8ne200100Ej: ; @_ZNSt3__18ios_base6unsetfB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w10, [sp, #4]
	ldr	w8, [x9, #8]
	bic	w8, w8, w10
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C1B8ne200100Ei ; -- Begin function _ZNSt3__18__iom_t5C1B8ne200100Ei
	.globl	__ZNSt3__18__iom_t5C1B8ne200100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C1B8ne200100Ei
	.p2align	2
__ZNSt3__18__iom_t5C1B8ne200100Ei:      ; @_ZNSt3__18__iom_t5C1B8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__18__iom_t5C2B8ne200100Ei
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C2B8ne200100Ei ; -- Begin function _ZNSt3__18__iom_t5C2B8ne200100Ei
	.globl	__ZNSt3__18__iom_t5C2B8ne200100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C2B8ne200100Ei
	.p2align	2
__ZNSt3__18__iom_t5C2B8ne200100Ei:      ; @_ZNSt3__18__iom_t5C2B8ne200100Ei
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
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
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
Ltmp166:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp167:
	b	LBB145_1
LBB145_1:
Ltmp169:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp170:
	b	LBB145_2
LBB145_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB145_18
	b	LBB145_3
LBB145_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp171:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp172:
	b	LBB145_4
LBB145_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB145_6
	b	LBB145_5
LBB145_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB145_7
LBB145_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB145_7
LBB145_7:
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
Ltmp173:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp174:
	b	LBB145_8
LBB145_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp175:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp176:
	b	LBB145_9
LBB145_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB145_17
	b	LBB145_10
LBB145_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp177:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp178:
	b	LBB145_11
LBB145_11:
	b	LBB145_17
LBB145_12:
Ltmp168:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB145_14
LBB145_13:
Ltmp179:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB145_14
LBB145_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp180:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp181:
	b	LBB145_15
LBB145_15:
	bl	___cxa_end_catch
	b	LBB145_16
LBB145_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB145_17:
	b	LBB145_18
LBB145_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB145_16
LBB145_19:
Ltmp182:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp183:
	bl	___cxa_end_catch
Ltmp184:
	b	LBB145_20
LBB145_20:
	b	LBB145_21
LBB145_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB145_22:
Ltmp185:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table145:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp166-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp167-Ltmp166                ;   Call between Ltmp166 and Ltmp167
	.uleb128 Ltmp168-Lfunc_begin18          ;     jumps to Ltmp168
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp169-Lfunc_begin18          ; >> Call Site 2 <<
	.uleb128 Ltmp178-Ltmp169                ;   Call between Ltmp169 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin18          ;     jumps to Ltmp179
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp178-Lfunc_begin18          ; >> Call Site 3 <<
	.uleb128 Ltmp180-Ltmp178                ;   Call between Ltmp178 and Ltmp180
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp180-Lfunc_begin18          ; >> Call Site 4 <<
	.uleb128 Ltmp181-Ltmp180                ;   Call between Ltmp180 and Ltmp181
	.uleb128 Ltmp182-Lfunc_begin18          ;     jumps to Ltmp182
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp181-Lfunc_begin18          ; >> Call Site 5 <<
	.uleb128 Ltmp183-Ltmp181                ;   Call between Ltmp181 and Ltmp183
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin18          ; >> Call Site 6 <<
	.uleb128 Ltmp184-Ltmp183                ;   Call between Ltmp183 and Ltmp184
	.uleb128 Ltmp185-Lfunc_begin18          ;     jumps to Ltmp185
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp184-Lfunc_begin18          ; >> Call Site 7 <<
	.uleb128 Lfunc_end18-Ltmp184            ;   Call between Ltmp184 and Lfunc_end18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
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
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
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
	cbnz	x8, LBB148_2
	b	LBB148_1
LBB148_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB148_23
LBB148_2:
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
	b.le	LBB148_4
	b	LBB148_3
LBB148_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB148_5
LBB148_4:
	str	xzr, [sp, #72]
	b	LBB148_5
LBB148_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB148_9
	b	LBB148_6
LBB148_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB148_8
	b	LBB148_7
LBB148_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB148_23
LBB148_8:
	b	LBB148_9
LBB148_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB148_18
	b	LBB148_10
LBB148_10:
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
Ltmp187:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp188:
	b	LBB148_11
LBB148_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB148_14
	b	LBB148_12
LBB148_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB148_15
LBB148_13:
Ltmp189:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB148_24
LBB148_14:
	str	wzr, [sp, #24]
	b	LBB148_15
LBB148_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB148_17
	b	LBB148_16
LBB148_16:
	b	LBB148_23
LBB148_17:
	b	LBB148_18
LBB148_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB148_22
	b	LBB148_19
LBB148_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB148_21
	b	LBB148_20
LBB148_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB148_23
LBB148_21:
	b	LBB148_22
LBB148_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB148_23
LBB148_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB148_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table148:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Lfunc_begin19-Lfunc_begin19    ; >> Call Site 1 <<
	.uleb128 Ltmp187-Lfunc_begin19          ;   Call between Lfunc_begin19 and Ltmp187
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp187-Lfunc_begin19          ; >> Call Site 2 <<
	.uleb128 Ltmp188-Ltmp187                ;   Call between Ltmp187 and Ltmp188
	.uleb128 Ltmp189-Lfunc_begin19          ;     jumps to Ltmp189
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin19          ; >> Call Site 3 <<
	.uleb128 Lfunc_end19-Ltmp188            ;   Call between Ltmp188 and Lfunc_end19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end19:
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
	tbnz	w0, #0, LBB151_2
	b	LBB151_1
LBB151_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB151_2
LBB151_2:
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
	tbz	w0, #0, LBB159_2
	b	LBB159_1
LBB159_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB159_3
LBB159_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB159_3
LBB159_3:
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
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
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
Ltmp198:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp199:
	b	LBB164_1
LBB164_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB164_2:
Ltmp200:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table164:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp198-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp199-Ltmp198                ;   Call between Ltmp198 and Ltmp199
	.uleb128 Ltmp200-Lfunc_begin20          ;     jumps to Ltmp200
	.byte	1                               ;   On action: 1
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
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
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
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
Ltmp202:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp203:
	b	LBB168_1
LBB168_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp204:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp205:
	b	LBB168_2
LBB168_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB168_3:
Ltmp206:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB168_4
LBB168_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table168:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21    ; >> Call Site 1 <<
	.uleb128 Ltmp202-Lfunc_begin21          ;   Call between Lfunc_begin21 and Ltmp202
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Ltmp205-Ltmp202                ;   Call between Ltmp202 and Ltmp205
	.uleb128 Ltmp206-Lfunc_begin21          ;     jumps to Ltmp206
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin21          ; >> Call Site 3 <<
	.uleb128 Lfunc_end21-Ltmp205            ;   Call between Ltmp205 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
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
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
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
	tbz	w0, #0, LBB180_2
	b	LBB180_1
LBB180_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB180_3
LBB180_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB180_3
LBB180_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #23]
	and	w9, w8, #0x7f
                                        ; implicit-def: $x8
	mov	x8, x9
	and	x0, x8, #0xff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base9precisionB8ne200100El ; -- Begin function _ZNSt3__18ios_base9precisionB8ne200100El
	.globl	__ZNSt3__18ios_base9precisionB8ne200100El
	.weak_definition	__ZNSt3__18ios_base9precisionB8ne200100El
	.p2align	2
__ZNSt3__18ios_base9precisionB8ne200100El: ; @_ZNSt3__18ios_base9precisionB8ne200100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
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

l_.str.32:                              ; @.str.32
	.asciz	"r_tree > -ctx.half && r_tree <= ctx.half"

l_.str.33:                              ; @.str.33
	.asciz	"T == q_linear * ctx.B + r_linear"

l_.str.34:                              ; @.str.34
	.asciz	"T == q_tree * ctx.B + r_tree"

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

.subsections_via_symbols
