	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	__Z16chacha_block_stdPjPKj      ; -- Begin function _Z16chacha_block_stdPjPKj
	.p2align	2
__Z16chacha_block_stdPjPKj:             ; @_Z16chacha_block_stdPjPKj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	ldr	x1, [sp, #24]
	add	x0, sp, #40
	mov	x2, #64                         ; =0x40
	bl	_memcpy
	str	wzr, [sp, #20]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #10
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	add	x0, sp, #40
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__Z13chacha_qr_stdPj
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__Z13chacha_qr_stdPj
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_1
LBB0_4:
	str	wzr, [sp, #16]
	b	LBB0_5
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	subs	w8, w8, #16
	b.ge	LBB0_8
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldrsw	x9, [sp, #16]
	add	x8, sp, #40
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB0_5
LBB0_8:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_10
	b	LBB0_9
LBB0_9:
	bl	___stack_chk_fail
LBB0_10:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z13chacha_qr_stdPj            ; -- Begin function _Z13chacha_qr_stdPj
	.weak_definition	__Z13chacha_qr_stdPj
	.p2align	2
__Z13chacha_qr_stdPj:                   ; @_Z13chacha_qr_stdPj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w10, [x8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #48]
	eor	w8, w8, w10
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #48]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #48]
	lsr	w8, w8, #16
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #8]
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #48]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #32]
	add	w8, w8, w10
	str	w8, [x9, #32]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #32]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #16]
	eor	w8, w8, w10
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	lsr	w8, w8, #20
	orr	w8, w8, w9, lsl #12
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w10, [x8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #48]
	eor	w8, w8, w10
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #48]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #48]
	lsr	w8, w8, #24
	orr	w8, w8, w9, lsl #8
	ldr	x9, [sp, #8]
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #48]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #32]
	add	w8, w8, w10
	str	w8, [x9, #32]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #32]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #16]
	eor	w8, w8, w10
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	lsr	w8, w8, #25
	orr	w8, w8, w9, lsl #7
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18chacha_block_reistPjPKj    ; -- Begin function _Z18chacha_block_reistPjPKj
	.p2align	2
__Z18chacha_block_reistPjPKj:           ; @_Z18chacha_block_reistPjPKj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	ldr	x1, [sp, #24]
	add	x0, sp, #40
	mov	x2, #64                         ; =0x40
	bl	_memcpy
	str	wzr, [sp, #20]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #10
	b.ge	LBB2_4
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	add	x0, sp, #40
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__Z15chacha_qr_reistPj
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__Z15chacha_qr_reistPj
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB2_1
LBB2_4:
	str	wzr, [sp, #16]
	b	LBB2_5
LBB2_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	subs	w8, w8, #16
	b.ge	LBB2_8
	b	LBB2_6
LBB2_6:                                 ;   in Loop: Header=BB2_5 Depth=1
	ldrsw	x9, [sp, #16]
	add	x8, sp, #40
	ldr	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldr	w1, [x8, x9, lsl #2]
	bl	__Z7std_addjj
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #16]
	str	w0, [x8, x9, lsl #2]
	b	LBB2_7
LBB2_7:                                 ;   in Loop: Header=BB2_5 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB2_5
LBB2_8:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB2_10
	b	LBB2_9
LBB2_9:
	bl	___stack_chk_fail
LBB2_10:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z15chacha_qr_reistPj          ; -- Begin function _Z15chacha_qr_reistPj
	.weak_definition	__Z15chacha_qr_reistPj
	.p2align	2
__Z15chacha_qr_reistPj:                 ; @_Z15chacha_qr_reistPj
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
	ldr	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #16]
	bl	__Z11reist_add32jj
	ldr	x8, [sp, #8]
	str	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w10, [x8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #48]
	eor	w8, w8, w10
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #48]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #48]
	lsr	w8, w8, #16
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #8]
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #48]
	bl	__Z11reist_add32jj
	ldr	x8, [sp, #8]
	str	w0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #32]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #16]
	eor	w8, w8, w10
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	lsr	w8, w8, #20
	orr	w8, w8, w9, lsl #12
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #16]
	bl	__Z11reist_add32jj
	ldr	x8, [sp, #8]
	str	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w10, [x8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #48]
	eor	w8, w8, w10
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #48]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #48]
	lsr	w8, w8, #24
	orr	w8, w8, w9, lsl #8
	ldr	x9, [sp, #8]
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #48]
	bl	__Z11reist_add32jj
	ldr	x8, [sp, #8]
	str	w0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #32]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #16]
	eor	w8, w8, w10
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	lsr	w8, w8, #25
	orr	w8, w8, w9, lsl #7
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z7std_addjj                   ; -- Begin function _Z7std_addjj
	.weak_definition	__Z7std_addjj
	.p2align	2
__Z7std_addjj:                          ; @_Z7std_addjj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #2576
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	wzr, [sp, #900]
	str	w0, [sp, #896]
	str	x1, [sp, #888]
	mov	w8, #16960                      ; =0x4240
	movk	w8, #15, lsl #16
	str	w8, [sp, #884]
	mov	w8, #47806                      ; =0xbabe
	movk	w8, #51966, lsl #16
	str	w8, [sp, #880]
	ldr	w8, [sp, #896]
	subs	w8, w8, #2
	b.lt	LBB5_5
	b	LBB5_1
LBB5_1:
	ldr	x8, [sp, #888]
	ldr	x1, [x8, #8]
Ltmp2:
	add	x0, sp, #856
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp3:
	b	LBB5_2
LBB5_2:
Ltmp4:
	add	x0, sp, #856
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	w0, [sp, #420]                  ; 4-byte Folded Spill
Ltmp5:
	b	LBB5_3
LBB5_3:
	ldr	w8, [sp, #420]                  ; 4-byte Folded Reload
	str	w8, [sp, #884]
	add	x0, sp, #856
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_5
LBB5_4:
Ltmp6:
	str	x0, [sp, #848]
	mov	x8, x1
	str	w8, [sp, #844]
	add	x0, sp, #856
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_112
LBB5_5:
	ldr	w8, [sp, #896]
	subs	w8, w8, #3
	b.lt	LBB5_10
	b	LBB5_6
LBB5_6:
	ldr	x8, [sp, #888]
	ldr	x1, [x8, #16]
Ltmp7:
	add	x0, sp, #816
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp8:
	b	LBB5_7
LBB5_7:
Ltmp10:
	add	x0, sp, #816
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stoulERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	x0, [sp, #408]                  ; 8-byte Folded Spill
Ltmp11:
	b	LBB5_8
LBB5_8:
	ldr	x8, [sp, #408]                  ; 8-byte Folded Reload
	str	w8, [sp, #880]
	add	x0, sp, #816
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_10
LBB5_9:
Ltmp12:
	str	x0, [sp, #848]
	mov	x8, x1
	str	w8, [sp, #844]
	add	x0, sp, #816
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_112
LBB5_10:
	add	x0, sp, #792
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #768
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #744
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #720
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
Ltmp13:
	add	x0, sp, #1992
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp14:
	b	LBB5_11
LBB5_11:
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	b	LBB5_12
LBB5_12:                                ; =>This Inner Loop Header: Depth=1
Ltmp15:
	add	x0, sp, #1992
	add	x1, sp, #672
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #400]                  ; 8-byte Folded Spill
Ltmp16:
	b	LBB5_13
LBB5_13:                                ;   in Loop: Header=BB5_12 Depth=1
	ldr	x8, [sp, #400]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp17:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #396]                  ; 4-byte Folded Spill
Ltmp18:
	b	LBB5_14
LBB5_14:                                ;   in Loop: Header=BB5_12 Depth=1
	ldr	w8, [sp, #396]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB5_24
	b	LBB5_15
LBB5_15:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #672
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB5_20
	b	LBB5_16
LBB5_16:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #672
	str	x0, [sp, #384]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #384]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp145:
	add	x8, sp, #648
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp146:
	b	LBB5_17
LBB5_17:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #792
	add	x1, sp, #648
	str	x1, [sp, #376]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #376]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_20
LBB5_18:
Ltmp144:
	str	x0, [sp, #848]
	mov	x8, x1
	str	w8, [sp, #844]
	b	LBB5_111
LBB5_19:
Ltmp149:
	str	x0, [sp, #848]
	mov	x8, x1
	str	w8, [sp, #844]
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1992
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB5_111
LBB5_20:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #672
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB5_23
	b	LBB5_21
LBB5_21:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #672
	str	x0, [sp, #368]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #368]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp147:
	add	x8, sp, #624
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp148:
	b	LBB5_22
LBB5_22:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #768
	add	x1, sp, #624
	str	x1, [sp, #360]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #360]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_23
LBB5_23:                                ;   in Loop: Header=BB5_12 Depth=1
	b	LBB5_12
LBB5_24:
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1992
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp19:
	add	x0, sp, #1416
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp20:
	b	LBB5_25
LBB5_25:
	add	x0, sp, #600
	str	x0, [sp, #344]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	ldr	x1, [sp, #344]                  ; 8-byte Folded Reload
Ltmp21:
	add	x0, sp, #1416
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #352]                  ; 8-byte Folded Spill
Ltmp22:
	b	LBB5_26
LBB5_26:
	ldr	x8, [sp, #352]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp23:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #340]                  ; 4-byte Folded Spill
Ltmp24:
	b	LBB5_27
LBB5_27:
	ldr	w8, [sp, #340]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB5_33
	b	LBB5_28
LBB5_28:
	add	x0, sp, #600
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB5_32
	b	LBB5_29
LBB5_29:
	add	x0, sp, #600
	str	x0, [sp, #328]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #328]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp25:
	add	x8, sp, #576
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp26:
	b	LBB5_30
LBB5_30:
	add	x0, sp, #744
	add	x1, sp, #576
	str	x1, [sp, #320]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #320]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_32
LBB5_31:
Ltmp27:
	str	x0, [sp, #848]
	mov	x8, x1
	str	w8, [sp, #844]
	add	x0, sp, #600
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1416
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB5_111
LBB5_32:
	b	LBB5_33
LBB5_33:
	add	x0, sp, #600
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1416
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp28:
	add	x0, sp, #1160
	mov	x1, #256                        ; =0x100
	bl	_gethostname
	str	w0, [sp, #316]                  ; 4-byte Folded Spill
Ltmp29:
	b	LBB5_34
LBB5_34:
	ldr	w8, [sp, #316]                  ; 4-byte Folded Reload
	cbnz	w8, LBB5_37
	b	LBB5_35
LBB5_35:
Ltmp30:
	add	x0, sp, #720
	add	x1, sp, #1160
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
Ltmp31:
	b	LBB5_36
LBB5_36:
	b	LBB5_37
LBB5_37:
Ltmp32:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_popen
	str	x0, [sp, #304]                  ; 8-byte Folded Spill
Ltmp33:
	b	LBB5_38
LBB5_38:
	ldr	x8, [sp, #304]                  ; 8-byte Folded Reload
	str	x8, [sp, #568]
	ldr	x8, [sp, #568]
	cbz	x8, LBB5_49
	b	LBB5_39
LBB5_39:
	ldr	x2, [sp, #568]
Ltmp34:
	add	x0, sp, #1032
	mov	w1, #128                        ; =0x80
	bl	_fgets
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
Ltmp35:
	b	LBB5_40
LBB5_40:
	ldr	x8, [sp, #296]                  ; 8-byte Folded Reload
	cbz	x8, LBB5_47
	b	LBB5_41
LBB5_41:
Ltmp36:
	add	x0, sp, #544
	add	x1, sp, #1032
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp37:
	b	LBB5_42
LBB5_42:
	add	x0, sp, #696
	str	x0, [sp, #288]                  ; 8-byte Folded Spill
	add	x1, sp, #544
	str	x1, [sp, #280]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #280]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp, #288]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	tbnz	w0, #0, LBB5_46
	b	LBB5_43
LBB5_43:
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	ldrsb	w8, [x0]
	subs	w8, w8, #10
	b.ne	LBB5_46
	b	LBB5_44
LBB5_44:
Ltmp38:
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
Ltmp39:
	b	LBB5_45
LBB5_45:
	b	LBB5_46
LBB5_46:
	b	LBB5_47
LBB5_47:
	ldr	x0, [sp, #568]
Ltmp40:
	bl	_pclose
Ltmp41:
	b	LBB5_48
LBB5_48:
	b	LBB5_49
LBB5_49:
Ltmp42:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #272]                  ; 8-byte Folded Spill
Ltmp43:
	b	LBB5_50
LBB5_50:
Ltmp44:
	mov	w0, #6                          ; =0x6
	bl	__ZNSt3__112setprecisionB8ne200100Ei
	str	w0, [sp, #268]                  ; 4-byte Folded Spill
Ltmp45:
	b	LBB5_51
LBB5_51:
	ldr	x0, [sp, #272]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #268]                  ; 4-byte Folded Reload
	add	x1, sp, #540
	str	w8, [sp, #540]
Ltmp46:
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
Ltmp47:
	b	LBB5_52
LBB5_52:
Ltmp48:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp49:
	b	LBB5_53
LBB5_53:
Ltmp50:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp51:
	b	LBB5_54
LBB5_54:
Ltmp52:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp53:
	b	LBB5_55
LBB5_55:
Ltmp54:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp55:
	b	LBB5_56
LBB5_56:
Ltmp56:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
Ltmp57:
	b	LBB5_57
LBB5_57:
Ltmp58:
	ldr	x0, [sp, #256]                  ; 8-byte Folded Reload
	add	x1, sp, #720
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #248]                  ; 8-byte Folded Spill
Ltmp59:
	b	LBB5_58
LBB5_58:
Ltmp60:
	ldr	x0, [sp, #248]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp61:
	b	LBB5_59
LBB5_59:
Ltmp62:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #240]                  ; 8-byte Folded Spill
Ltmp63:
	b	LBB5_60
LBB5_60:
Ltmp64:
	ldr	x0, [sp, #240]                  ; 8-byte Folded Reload
	add	x1, sp, #696
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #232]                  ; 8-byte Folded Spill
Ltmp65:
	b	LBB5_61
LBB5_61:
Ltmp66:
	ldr	x0, [sp, #232]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp67:
	b	LBB5_62
LBB5_62:
Ltmp68:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #224]                  ; 8-byte Folded Spill
Ltmp69:
	b	LBB5_63
LBB5_63:
Ltmp70:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	add	x1, sp, #792
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #216]                  ; 8-byte Folded Spill
Ltmp71:
	b	LBB5_64
LBB5_64:
Ltmp72:
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp73:
	b	LBB5_65
LBB5_65:
Ltmp74:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
Ltmp75:
	b	LBB5_66
LBB5_66:
Ltmp76:
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	add	x1, sp, #768
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
Ltmp77:
	b	LBB5_67
LBB5_67:
Ltmp78:
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp79:
	b	LBB5_68
LBB5_68:
Ltmp80:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
Ltmp81:
	b	LBB5_69
LBB5_69:
Ltmp82:
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	add	x1, sp, #744
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
Ltmp83:
	b	LBB5_70
LBB5_70:
Ltmp84:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp85:
	b	LBB5_71
LBB5_71:
Ltmp86:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp87:
	b	LBB5_72
LBB5_72:
	add	x8, sp, #536
	mov	w9, #22136                      ; =0x5678
	movk	w9, #4660, lsl #16
	str	w9, [sp, #536]
	str	x8, [sp, #512]
	add	x8, sp, #880
	str	x8, [sp, #520]
	ldr	w2, [sp, #884]
	ldr	x0, [sp, #512]
	ldr	x1, [sp, #520]
Ltmp88:
	bl	__Z5benchIZ4mainE3$_0EdT_i
	str	d0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp89:
	b	LBB5_73
LBB5_73:
	ldr	d0, [sp, #176]                  ; 8-byte Folded Reload
	str	d0, [sp, #528]
	add	x8, sp, #536
	str	x8, [sp, #488]
	add	x8, sp, #880
	str	x8, [sp, #496]
	ldr	w2, [sp, #884]
	ldr	x0, [sp, #488]
	ldr	x1, [sp, #496]
Ltmp90:
	bl	__Z5benchIZ4mainE3$_1EdT_i
	str	d0, [sp, #168]                  ; 8-byte Folded Spill
Ltmp91:
	b	LBB5_74
LBB5_74:
	ldr	d0, [sp, #168]                  ; 8-byte Folded Reload
	str	d0, [sp, #504]
Ltmp92:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp93:
	b	LBB5_75
LBB5_75:
Ltmp94:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
Ltmp95:
	b	LBB5_76
LBB5_76:
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #528]
Ltmp96:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp97:
	b	LBB5_77
LBB5_77:
Ltmp98:
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp99:
	b	LBB5_78
LBB5_78:
Ltmp100:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp101:
	b	LBB5_79
LBB5_79:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #504]
Ltmp102:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp103:
	b	LBB5_80
LBB5_80:
Ltmp104:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp105:
	b	LBB5_81
LBB5_81:
	ldr	d0, [sp, #504]
	fcmp	d0, #0.0
	b.le	LBB5_86
	b	LBB5_82
LBB5_82:
Ltmp106:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp107:
	b	LBB5_83
LBB5_83:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #528]
	ldr	d1, [sp, #504]
	fdiv	d0, d0, d1
Ltmp108:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp109:
	b	LBB5_84
LBB5_84:
Ltmp110:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp111:
	b	LBB5_85
LBB5_85:
	b	LBB5_86
LBB5_86:
	str	wzr, [sp, #484]
	b	LBB5_87
LBB5_87:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #484]
	subs	w8, w8, #16
	b.ge	LBB5_90
	b	LBB5_88
LBB5_88:                                ;   in Loop: Header=BB5_87 Depth=1
	ldr	w8, [sp, #484]
	mov	w9, #31161                      ; =0x79b9
	movk	w9, #40503, lsl #16
	mul	w8, w8, w9
	ldrsw	x10, [sp, #484]
	add	x9, sp, #968
	str	w8, [x9, x10, lsl #2]
	b	LBB5_89
LBB5_89:                                ;   in Loop: Header=BB5_87 Depth=1
	ldr	w8, [sp, #484]
	add	w8, w8, #1
	str	w8, [sp, #484]
	b	LBB5_87
LBB5_90:
	add	x8, sp, #904
	str	x8, [sp, #456]
	add	x8, sp, #968
	str	x8, [sp, #464]
	ldr	w2, [sp, #884]
	ldr	x0, [sp, #456]
	ldr	x1, [sp, #464]
Ltmp112:
	bl	__Z5benchIZ4mainE3$_2EdT_i
	str	d0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp113:
	b	LBB5_91
LBB5_91:
	ldr	d0, [sp, #112]                  ; 8-byte Folded Reload
	str	d0, [sp, #472]
	add	x8, sp, #904
	str	x8, [sp, #432]
	add	x8, sp, #968
	str	x8, [sp, #440]
	ldr	w2, [sp, #884]
	ldr	x0, [sp, #432]
	ldr	x1, [sp, #440]
Ltmp114:
	bl	__Z5benchIZ4mainE3$_3EdT_i
	str	d0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp115:
	b	LBB5_92
LBB5_92:
	ldr	d0, [sp, #104]                  ; 8-byte Folded Reload
	str	d0, [sp, #448]
	ldr	s1, [sp, #884]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	mov	x8, #4634204016564240384        ; =0x4050000000000000
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp, #424]
Ltmp116:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp117:
	b	LBB5_93
LBB5_93:
Ltmp118:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp119:
	b	LBB5_94
LBB5_94:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #472]
Ltmp120:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp121:
	b	LBB5_95
LBB5_95:
Ltmp122:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp123:
	b	LBB5_96
LBB5_96:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #424]
	ldr	d1, [sp, #472]
	fdiv	d0, d0, d1
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp124:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp125:
	b	LBB5_97
LBB5_97:
Ltmp126:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp127:
	b	LBB5_98
LBB5_98:
Ltmp128:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp129:
	b	LBB5_99
LBB5_99:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #448]
Ltmp130:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp131:
	b	LBB5_100
LBB5_100:
Ltmp132:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp133:
	b	LBB5_101
LBB5_101:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #424]
	ldr	d1, [sp, #448]
	fdiv	d0, d0, d1
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp134:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp135:
	b	LBB5_102
LBB5_102:
Ltmp136:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp137:
	b	LBB5_103
LBB5_103:
	ldr	d0, [sp, #448]
	fcmp	d0, #0.0
	b.le	LBB5_108
	b	LBB5_104
LBB5_104:
Ltmp138:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp139:
	b	LBB5_105
LBB5_105:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #472]
	ldr	d1, [sp, #448]
	fdiv	d0, d0, d1
Ltmp140:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp141:
	b	LBB5_106
LBB5_106:
Ltmp142:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp143:
	b	LBB5_107
LBB5_107:
	b	LBB5_108
LBB5_108:
	str	wzr, [sp, #900]
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #720
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #744
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #768
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #792
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #900]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB5_110
	b	LBB5_109
LBB5_109:
	bl	___stack_chk_fail
LBB5_110:
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	add	sp, sp, #2576
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB5_111:
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #720
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #744
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #768
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #792
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_112
LBB5_112:
	ldr	x0, [sp, #848]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB5_114
LBB5_113:
Ltmp9:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB5_114
LBB5_114:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp2-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp3-Ltmp2                    ;   Call between Ltmp2 and Ltmp3
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp5-Ltmp4                    ;   Call between Ltmp4 and Ltmp5
	.uleb128 Ltmp6-Lfunc_begin0             ;     jumps to Ltmp6
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp14-Ltmp13                  ;   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp144-Lfunc_begin0           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp148-Ltmp15                 ;   Call between Ltmp15 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin0           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp144-Lfunc_begin0           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp26-Ltmp21                  ;   Call between Ltmp21 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin0            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp143-Ltmp28                 ;   Call between Ltmp28 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin0           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp143-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Lfunc_end0-Ltmp143             ;   Call between Ltmp143 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
Ltmp150:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
Ltmp151:
	b	LBB8_1
LBB8_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #424]
	add	x0, x8, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp153:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp154:
	b	LBB8_2
LBB8_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-24]
	ldur	w8, [x29, #-28]
	orr	w2, w8, #0x8
Ltmp156:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp157:
	b	LBB8_3
LBB8_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cbnz	x8, LBB8_9
	b	LBB8_4
LBB8_4:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp158:
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp159:
	b	LBB8_5
LBB8_5:
	b	LBB8_9
LBB8_6:
Ltmp152:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB8_11
LBB8_7:
Ltmp155:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB8_10
LBB8_8:
Ltmp160:
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	b	LBB8_10
LBB8_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB8_10:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	b	LBB8_11
LBB8_11:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB8_12
LBB8_12:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp150-Lfunc_begin1           ;   Call between Lfunc_begin1 and Ltmp150
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp150-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp151-Ltmp150                ;   Call between Ltmp150 and Ltmp151
	.uleb128 Ltmp152-Lfunc_begin1           ;     jumps to Ltmp152
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp153-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp154-Ltmp153                ;   Call between Ltmp153 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp156-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp159-Ltmp156                ;   Call between Ltmp156 and Ltmp159
	.uleb128 Ltmp160-Lfunc_begin1           ;     jumps to Ltmp160
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Lfunc_end1-Ltmp159             ;   Call between Ltmp159 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
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
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #10                         ; =0xa
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
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
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	eor	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
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
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	mov	x4, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	sub	x0, x29, #33
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
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
	adrp	x1, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x1, [x1, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EPKc
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
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
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	subs	x8, x0, #0
	cset	w0, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x0, x8
	subs	x0, x8, #1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
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
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	subs	x1, x8, #1
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_0EdT_i
__Z5benchIZ4mainE3$_0EdT_i:             ; @"_Z5benchIZ4mainE3$_0EdT_i"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	w2, [x29, #-20]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sub	x9, x29, #32
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-32]
	ldur	w1, [x29, #-20]
	bl	__ZZ4mainENK3$_0clEi
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #40
	str	x8, [sp, #40]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_1EdT_i
__Z5benchIZ4mainE3$_1EdT_i:             ; @"_Z5benchIZ4mainE3$_1EdT_i"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	w2, [x29, #-20]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sub	x9, x29, #32
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-32]
	ldur	w1, [x29, #-20]
	bl	__ZZ4mainENK3$_1clEi
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #40
	str	x8, [sp, #40]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_2EdT_i
__Z5benchIZ4mainE3$_2EdT_i:             ; @"_Z5benchIZ4mainE3$_2EdT_i"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	w2, [x29, #-20]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sub	x9, x29, #32
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-32]
	ldur	w1, [x29, #-20]
	bl	__ZZ4mainENK3$_2clEi
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #40
	str	x8, [sp, #40]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z5benchIZ4mainE3$_3EdT_i
__Z5benchIZ4mainE3$_3EdT_i:             ; @"_Z5benchIZ4mainE3$_3EdT_i"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	w2, [x29, #-20]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sub	x9, x29, #32
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-32]
	ldur	w1, [x29, #-20]
	bl	__ZZ4mainENK3$_3clEi
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #40
	str	x8, [sp, #40]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #24
	str	x0, [sp, #24]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11reist_add32jj              ; -- Begin function _Z11reist_add32jj
	.weak_definition	__Z11reist_add32jj
	.p2align	2
__Z11reist_add32jj:                     ; @_Z11reist_add32jj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED2Ev
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
	ldr	x9, [sp, #16]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #24]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	add	x0, x8, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	mov	x9, x8
	str	x9, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	add	sp, sp, #16
	b	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_endproc
                                        ; -- End function
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
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100ILi0EEEPKc
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
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne200100EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne200100Ev
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
	str	xzr, [x0]
	str	xzr, [x0, #8]
	str	xzr, [x0, #16]
	bl	__ZNSt3__19allocatorIcEC1B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
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
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne200100Ev
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
	bl	__ZNSt3__18ios_baseC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
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
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #8]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	str	xzr, [x8, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x1, [sp, #8]
	add	x0, x8, x9
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	__ZNSt3__18ios_baseC2B8ne200100Ev ; -- Begin function _ZNSt3__18ios_baseC2B8ne200100Ev
	.globl	__ZNSt3__18ios_baseC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__18ios_baseC2B8ne200100Ev
	.p2align	2
__ZNSt3__18ios_baseC2B8ne200100Ev:      ; @_ZNSt3__18ios_baseC2B8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, __ZTVNSt3__18ios_baseE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__18ios_baseE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0, #48]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne200100EPNS_15basic_streambufIcS2_EE
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
	bl	__ZNSt3__18ios_base4initEPv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #136]
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEE6__initB8ne200100Ev
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
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	w0, [x8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_definition	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	sturb	w2, [x29, #-17]
	stur	wzr, [x29, #-24]
	ldur	x1, [x29, #-8]
	sub	x0, x29, #25
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	and	w2, w8, #0x1
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	tbz	w0, #0, LBB52_25
	b	LBB52_1
LBB52_1:
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	stur	xzr, [x29, #-40]
	b	LBB52_2
LBB52_2:                                ; =>This Inner Loop Header: Depth=1
	b	LBB52_3
LBB52_3:                                ;   in Loop: Header=BB52_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp168:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp169:
	b	LBB52_4
LBB52_4:                                ;   in Loop: Header=BB52_2 Depth=1
Ltmp170:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
Ltmp171:
	b	LBB52_5
LBB52_5:                                ;   in Loop: Header=BB52_2 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	mov	x1, x0
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	tbz	w0, #0, LBB52_12
	b	LBB52_6
LBB52_6:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x2
	stur	w8, [x29, #-24]
	b	LBB52_18
LBB52_7:
Ltmp174:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	b	LBB52_8
LBB52_8:
	ldr	x0, [sp, #56]
	bl	___cxa_begin_catch
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x1
	stur	w8, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	ldur	w1, [x29, #-24]
Ltmp175:
	bl	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
Ltmp176:
	b	LBB52_9
LBB52_9:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp177:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
Ltmp178:
	b	LBB52_10
LBB52_10:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB52_22
	b	LBB52_11
LBB52_11:
Ltmp179:
	bl	___cxa_rethrow
Ltmp180:
	b	LBB52_28
LBB52_12:                               ;   in Loop: Header=BB52_2 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	ldur	w0, [x29, #-44]
	bl	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	strb	w0, [sp, #51]
	ldrsb	w0, [sp, #51]
	ldursb	w1, [x29, #-17]
	bl	__ZNSt3__111char_traitsIcE2eqEcc
	tbz	w0, #0, LBB52_14
	b	LBB52_13
LBB52_13:
	b	LBB52_18
LBB52_14:                               ;   in Loop: Header=BB52_2 Depth=1
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #51]
Ltmp172:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp173:
	b	LBB52_15
LBB52_15:                               ;   in Loop: Header=BB52_2 Depth=1
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	LBB52_17
	b	LBB52_16
LBB52_16:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB52_18
LBB52_17:                               ;   in Loop: Header=BB52_2 Depth=1
	b	LBB52_2
LBB52_18:
	ldur	x8, [x29, #-40]
	cbnz	x8, LBB52_20
	b	LBB52_19
LBB52_19:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB52_20
LBB52_20:
	b	LBB52_23
LBB52_21:
Ltmp181:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
Ltmp182:
	bl	___cxa_end_catch
Ltmp183:
	b	LBB52_24
LBB52_22:
	bl	___cxa_end_catch
	b	LBB52_23
LBB52_23:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	ldur	w1, [x29, #-24]
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	b	LBB52_25
LBB52_24:
	b	LBB52_26
LBB52_25:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB52_26:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
LBB52_27:
Ltmp184:
	bl	___clang_call_terminate
LBB52_28:
	brk	#0x1
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table52:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp168-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp168
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp171-Ltmp168                ;   Call between Ltmp168 and Ltmp171
	.uleb128 Ltmp174-Lfunc_begin2           ;     jumps to Ltmp174
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp171-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp175-Ltmp171                ;   Call between Ltmp171 and Ltmp175
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp175-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp180-Ltmp175                ;   Call between Ltmp175 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin2           ;     jumps to Ltmp181
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Ltmp173-Ltmp172                ;   Call between Ltmp172 and Ltmp173
	.uleb128 Ltmp174-Lfunc_begin2           ;     jumps to Ltmp174
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp182-Lfunc_begin2           ; >> Call Site 6 <<
	.uleb128 Ltmp183-Ltmp182                ;   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin2           ;     jumps to Ltmp184
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp183-Lfunc_begin2           ; >> Call Site 7 <<
	.uleb128 Lfunc_end2-Ltmp183             ;   Call between Ltmp183 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
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
Ltmp185:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp186:
	b	LBB53_1
LBB53_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp187:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp188:
	b	LBB53_2
LBB53_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB53_3:
Ltmp189:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB53_4
LBB53_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table53:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp185-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp185
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp185-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp188-Ltmp185                ;   Call between Ltmp185 and Ltmp188
	.uleb128 Ltmp189-Lfunc_begin3           ;     jumps to Ltmp189
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp188             ;   Call between Ltmp188 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev ; -- Begin function _ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.globl	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.weak_definition	__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	.p2align	2
__ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev: ; @_ZNKSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB55_2
	b	LBB55_1
LBB55_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	add	x1, sp, #15
	strb	wzr, [sp, #15]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB55_3
LBB55_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	add	x1, sp, #14
	strb	wzr, [sp, #14]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB55_3
LBB55_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
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
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x9, #24]
	ldr	x9, [x9, #32]
	subs	x8, x8, x9
	b.ne	LBB57_2
	b	LBB57_1
LBB57_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
	blr	x8
	stur	w0, [x29, #-4]
	b	LBB57_3
LBB57_2:
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [x10, #24]
	add	x9, x8, #1
	str	x9, [x10, #24]
	ldrsb	w0, [x8]
	bl	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	stur	w0, [x29, #-4]
	b	LBB57_3
LBB57_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w0, eq
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei ; -- Begin function _ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.globl	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.weak_definition	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.p2align	2
__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei: ; @_ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	sxtb	w0, w8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE2eqEcc ; -- Begin function _ZNSt3__111char_traitsIcE2eqEcc
	.globl	__ZNSt3__111char_traitsIcE2eqEcc
	.weak_definition	__ZNSt3__111char_traitsIcE2eqEcc
	.p2align	2
__ZNSt3__111char_traitsIcE2eqEcc:       ; @_ZNSt3__111char_traitsIcE2eqEcc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	strb	w1, [sp, #14]
	ldrsb	w8, [sp, #15]
	ldrsb	w9, [sp, #14]
	subs	w8, w8, w9
	cset	w0, eq
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
	tbz	w0, #0, LBB61_2
	b	LBB61_1
LBB61_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB61_3
LBB61_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB61_3
LBB61_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, #2                          ; =0x2
	udiv	x9, x0, x9
	subs	x8, x8, x9
	b.hi	LBB62_2
	b	LBB62_1
LBB62_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	stur	x8, [x29, #-8]
	b	LBB62_6
LBB62_2:
	strb	wzr, [sp, #23]
	ldrb	w8, [sp, #23]
	tbz	w8, #0, LBB62_4
	b	LBB62_3
LBB62_3:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB62_5
LBB62_4:
	ldr	x8, [sp, #24]
	mov	x9, #2                          ; =0x2
	udiv	x8, x8, x9
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB62_5
LBB62_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB62_6
LBB62_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej ; -- Begin function _ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.globl	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.weak_definition	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.p2align	2
__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej: ; @_ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8, #40]
	cbz	x8, LBB63_2
	b	LBB63_1
LBB63_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w10, [sp, #20]
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB63_3
LBB63_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp, #20]
	orr	w10, w8, #0x1
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB63_3
LBB63_3:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
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
	bl	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev
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
	.private_extern	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc ; -- Begin function _ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.globl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.weak_definition	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.p2align	2
__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc: ; @_ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	strb	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x9, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
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
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x9, [sp, #8]
	ldr	x10, [sp]
	ldrb	w8, [x9, #23]
	mov	x11, x10
	mov	w10, #127                       ; =0x7f
	and	w11, w11, #0x7f
	and	w8, w8, #0xffffff80
	orr	w8, w8, w11
	strb	w8, [x9, #23]
	ldrb	w8, [x9, #23]
	and	w8, w8, w10
	mov	w10, #0                         ; =0x0
	orr	w8, w8, w10
	strb	w8, [x9, #23]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
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
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne200100ERc
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
	.private_extern	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec ; -- Begin function _ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.globl	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.weak_definition	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.p2align	2
__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec: ; @_ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strb	w0, [sp, #15]
	ldrb	w0, [sp, #15]
	add	sp, sp, #16
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
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
	bl	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev ; -- Begin function _ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.globl	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__114numeric_limitsImE3maxB8ne200100Ev: ; @_ZNSt3__114numeric_limitsImE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorIcE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #-1                         ; =0xffffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev: ; @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne200100Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #-1                         ; =0xffffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.globl	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base10exceptionsB8ne200100Ev: ; @_ZNKSt3__18ios_base10exceptionsB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #36]
	add	sp, sp, #16
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
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failB8ne200100Ev
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
	bl	__ZNKSt3__18ios_base4failB8ne200100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base4failB8ne200100Ev ; -- Begin function _ZNKSt3__18ios_base4failB8ne200100Ev
	.globl	__ZNKSt3__18ios_base4failB8ne200100Ev
	.weak_definition	__ZNKSt3__18ios_base4failB8ne200100Ev
	.p2align	2
__ZNKSt3__18ios_base4failB8ne200100Ev:  ; @_ZNKSt3__18ios_base4failB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	ands	w8, w8, w9
	cset	w0, ne
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_ ; -- Begin function _ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	.globl	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	.weak_definition	__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
	.p2align	2
__ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_: ; @_ZNSt3__110__str_findB8ne200100IcmNS_11char_traitsIcEELm18446744073709551615EEET0_PKT_S3_S6_S3_S3_
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
	str	x4, [sp, #16]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ls	LBB87_2
	b	LBB87_1
LBB87_1:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB87_7
LBB87_2:
	ldr	x8, [sp, #16]
	cbnz	x8, LBB87_4
	b	LBB87_3
LBB87_3:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB87_7
LBB87_4:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	add	x0, x8, x9
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x1, x8, x9
	ldr	x2, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #16]
	add	x3, x8, x9
	bl	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-24]
	add	x9, x9, x10
	subs	x8, x8, x9
	b.ne	LBB87_6
	b	LBB87_5
LBB87_5:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB87_7
LBB87_6:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB87_7
LBB87_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
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
	.private_extern	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_ ; -- Begin function _ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	.globl	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	.weak_definition	__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
	.p2align	2
__ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_: ; @_ZNSt3__118__search_substringB8ne200100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_
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
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, LBB89_2
	b	LBB89_1
LBB89_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB89_13
LBB89_2:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB89_4
	b	LBB89_3
LBB89_3:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB89_13
LBB89_4:
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	b	LBB89_5
LBB89_5:                                ; =>This Inner Loop Header: Depth=1
	b	LBB89_6
LBB89_6:                                ;   in Loop: Header=BB89_5 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB89_8
	b	LBB89_7
LBB89_7:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB89_13
LBB89_8:                                ;   in Loop: Header=BB89_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	add	x1, x8, #1
	add	x2, sp, #7
	bl	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB89_10
	b	LBB89_9
LBB89_9:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB89_13
LBB89_10:                               ;   in Loop: Header=BB89_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	cbnz	w0, LBB89_12
	b	LBB89_11
LBB89_11:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB89_13
LBB89_12:                               ;   in Loop: Header=BB89_5 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	LBB89_5
LBB89_13:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_ ; -- Begin function _ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	.globl	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	.weak_definition	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	.p2align	2
__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_: ; @_ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
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
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	cbnz	x8, LBB90_2
	b	LBB90_1
LBB90_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB90_4
LBB90_2:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldrsb	w1, [x8]
	ldr	x2, [sp, #24]
Ltmp209:
	bl	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp210:
	b	LBB90_3
LBB90_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB90_4
LBB90_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB90_5:
Ltmp211:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table90:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp209-Lfunc_begin4           ; >> Call Site 1 <<
	.uleb128 Ltmp210-Ltmp209                ;   Call between Ltmp209 and Ltmp210
	.uleb128 Ltmp211-Lfunc_begin4           ;     jumps to Ltmp211
	.byte	1                               ;   On action: 1
Lcst_end4:
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
	.private_extern	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m ; -- Begin function _ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	.globl	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	.weak_definition	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	.p2align	2
__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m: ; @_ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
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
	bl	_memcmp
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m ; -- Begin function _ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.globl	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.weak_definition	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.p2align	2
__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m: ; @_ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	str	x2, [sp, #8]
	strb	wzr, [sp, #7]
	ldurb	w8, [x29, #-9]
	strb	w8, [sp, #7]
	ldur	x0, [x29, #-8]
	ldrsb	w1, [sp, #7]
	ldr	x2, [sp, #8]
	bl	_memchr
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	tbz	w0, #0, LBB94_2
	b	LBB94_1
LBB94_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB94_3
LBB94_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB94_3
LBB94_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__move_assignB8ne200100ERS5_NS_17integral_constantIbLb1EEE
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
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB98_2
	b	LBB98_1
LBB98_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	b	LBB98_2
LBB98_2:
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	w9, #1                          ; =0x1
	eor	w8, w8, #0x1
	and	w8, w8, w9
	strb	w8, [sp, #31]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	q0, [x8]
	str	q0, [x9]
	ldr	x8, [x8, #16]
	str	x8, [x9, #16]
	ldur	x0, [x29, #-24]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	add	x1, sp, #30
	strb	wzr, [sp, #30]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldrb	w8, [sp, #31]
	tbz	w8, #0, LBB98_5
	b	LBB98_3
LBB98_3:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB98_5
	b	LBB98_4
LBB98_4:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB98_6
LBB98_5:
	ldur	x0, [x29, #-24]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB98_6
LBB98_6:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbnz	w0, #0, LBB98_9
	b	LBB98_7
LBB98_7:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB98_9
	b	LBB98_8
LBB98_8:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB98_9
LBB98_9:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ne200100ERS2_Pcm
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
	bl	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__get_long_capB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	and	x8, x8, #0x7fffffffffffffff
	lsr	x0, x8, #0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm ; -- Begin function _ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	.globl	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	.weak_definition	__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
	.p2align	2
__ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm: ; @_ZNSt3__19allocatorIcE10deallocateB8ne200100EPcm
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
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100IcEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
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
	lsr	x8, x8, #0
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPcEEEvDpT_
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__move_assign_allocB8ne200100ERS5_NS_17integral_constantIbLb1EEE
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
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
	tbz	w0, #0, LBB107_2
	b	LBB107_1
LBB107_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB107_3
LBB107_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB107_3
LBB107_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__erase_to_endB8ne200100Em
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne200100Ev
	bl	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne200100EPcm
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ls	LBB109_2
	b	LBB109_1
LBB109_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x1, x8, x9
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	b	LBB109_2
LBB109_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	add	x0, x8, x9
	add	x1, sp, #15
	strb	wzr, [sp, #15]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ls	LBB109_4
	b	LBB109_3
LBB109_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB109_4
LBB109_4:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IcEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IcEEPT_S2_
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
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__set_sizeB8ne200100Em
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
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbz	w0, #0, LBB112_2
	b	LBB112_1
LBB112_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB112_3
LBB112_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB112_3
LBB112_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
Ltmp221:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp222:
	b	LBB114_1
LBB114_1:
Ltmp224:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp225:
	b	LBB114_2
LBB114_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB114_18
	b	LBB114_3
LBB114_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp226:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp227:
	b	LBB114_4
LBB114_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB114_6
	b	LBB114_5
LBB114_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB114_7
LBB114_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB114_7
LBB114_7:
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
Ltmp228:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp229:
	b	LBB114_8
LBB114_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp230:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp231:
	b	LBB114_9
LBB114_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB114_17
	b	LBB114_10
LBB114_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp232:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp233:
	b	LBB114_11
LBB114_11:
	b	LBB114_17
LBB114_12:
Ltmp223:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB114_14
LBB114_13:
Ltmp234:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB114_14
LBB114_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp235:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp236:
	b	LBB114_15
LBB114_15:
	bl	___cxa_end_catch
	b	LBB114_16
LBB114_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB114_17:
	b	LBB114_18
LBB114_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB114_16
LBB114_19:
Ltmp237:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp238:
	bl	___cxa_end_catch
Ltmp239:
	b	LBB114_20
LBB114_20:
	b	LBB114_21
LBB114_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB114_22:
Ltmp240:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table114:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp221-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp222-Ltmp221                ;   Call between Ltmp221 and Ltmp222
	.uleb128 Ltmp223-Lfunc_begin5           ;     jumps to Ltmp223
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp224-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp233-Ltmp224                ;   Call between Ltmp224 and Ltmp233
	.uleb128 Ltmp234-Lfunc_begin5           ;     jumps to Ltmp234
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp233-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp235-Ltmp233                ;   Call between Ltmp233 and Ltmp235
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp235-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp236-Ltmp235                ;   Call between Ltmp235 and Ltmp236
	.uleb128 Ltmp237-Lfunc_begin5           ;     jumps to Ltmp237
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp236-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp238-Ltmp236                ;   Call between Ltmp236 and Ltmp238
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp238-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp239-Ltmp238                ;   Call between Ltmp238 and Ltmp239
	.uleb128 Ltmp240-Lfunc_begin5           ;     jumps to Ltmp240
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp239-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Lfunc_end5-Ltmp239             ;   Call between Ltmp239 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
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
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
	cbnz	x8, LBB116_2
	b	LBB116_1
LBB116_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB116_23
LBB116_2:
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
	b.le	LBB116_4
	b	LBB116_3
LBB116_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB116_5
LBB116_4:
	str	xzr, [sp, #72]
	b	LBB116_5
LBB116_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB116_9
	b	LBB116_6
LBB116_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB116_8
	b	LBB116_7
LBB116_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB116_23
LBB116_8:
	b	LBB116_9
LBB116_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB116_18
	b	LBB116_10
LBB116_10:
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
Ltmp242:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp243:
	b	LBB116_11
LBB116_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB116_14
	b	LBB116_12
LBB116_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB116_15
LBB116_13:
Ltmp244:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB116_24
LBB116_14:
	str	wzr, [sp, #24]
	b	LBB116_15
LBB116_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB116_17
	b	LBB116_16
LBB116_16:
	b	LBB116_23
LBB116_17:
	b	LBB116_18
LBB116_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB116_22
	b	LBB116_19
LBB116_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB116_21
	b	LBB116_20
LBB116_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB116_23
LBB116_21:
	b	LBB116_22
LBB116_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB116_23
LBB116_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB116_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table116:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp242-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp242
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp242-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp243-Ltmp242                ;   Call between Ltmp242 and Ltmp243
	.uleb128 Ltmp244-Lfunc_begin6           ;     jumps to Ltmp244
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp243-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp243             ;   Call between Ltmp243 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
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
	tbnz	w0, #0, LBB119_2
	b	LBB119_1
LBB119_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB119_2
LBB119_2:
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
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne200100ERNS_13basic_ostreamIcS2_EE
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
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
Ltmp249:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp250:
	b	LBB126_1
LBB126_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB126_2:
Ltmp251:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table126:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp249-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp250-Ltmp249                ;   Call between Ltmp249 and Ltmp250
	.uleb128 Ltmp251-Lfunc_begin7           ;     jumps to Ltmp251
	.byte	1                               ;   On action: 1
Lcst_end7:
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
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clEi
__ZZ4mainENK3$_0clEi:                   ; @"_ZZ4mainENK3$_0clEi"
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	wzr, [sp, #16]
	b	LBB130_1
LBB130_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB130_4
	b	LBB130_2
LBB130_2:                               ;   in Loop: Header=BB130_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	w0, [x9]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	__Z7std_addjj
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	w0, [x8]
	b	LBB130_3
LBB130_3:                               ;   in Loop: Header=BB130_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB130_1
LBB130_4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_1clEi
__ZZ4mainENK3$_1clEi:                   ; @"_ZZ4mainENK3$_1clEi"
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	wzr, [sp, #16]
	b	LBB144_1
LBB144_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB144_4
	b	LBB144_2
LBB144_2:                               ;   in Loop: Header=BB144_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	w0, [x9]
	ldr	x8, [x8, #8]
	ldr	w1, [x8]
	bl	__Z11reist_add32jj
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	w0, [x8]
	b	LBB144_3
LBB144_3:                               ;   in Loop: Header=BB144_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB144_1
LBB144_4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_2clEi
__ZZ4mainENK3$_2clEi:                   ; @"_ZZ4mainENK3$_2clEi"
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	wzr, [sp, #16]
	b	LBB145_1
LBB145_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB145_4
	b	LBB145_2
LBB145_2:                               ;   in Loop: Header=BB145_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	bl	__Z16chacha_block_stdPjPKj
	b	LBB145_3
LBB145_3:                               ;   in Loop: Header=BB145_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB145_1
LBB145_4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_3clEi
__ZZ4mainENK3$_3clEi:                   ; @"_ZZ4mainENK3$_3clEi"
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	wzr, [sp, #16]
	b	LBB146_1
LBB146_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	LBB146_4
	b	LBB146_2
LBB146_2:                               ;   in Loop: Header=BB146_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	bl	__Z18chacha_block_reistPjPKj
	b	LBB146_3
LBB146_3:                               ;   in Loop: Header=BB146_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB146_1
LBB146_4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/proc/cpuinfo"

l_.str.1:                               ; @.str.1
	.asciz	"model name"

l_.str.2:                               ; @.str.2
	.asciz	":"

l_.str.3:                               ; @.str.3
	.asciz	"cpu MHz"

l_.str.4:                               ; @.str.4
	.asciz	"/proc/meminfo"

l_.str.5:                               ; @.str.5
	.asciz	"MemTotal"

l_.str.6:                               ; @.str.6
	.asciz	"uname -o"

l_.str.7:                               ; @.str.7
	.asciz	"r"

l_.str.8:                               ; @.str.8
	.asciz	"========================================\n"

l_.str.9:                               ; @.str.9
	.asciz	"ChaCha20 REIST Benchmark\n"

l_.str.10:                              ; @.str.10
	.asciz	"System Information:\n"

l_.str.11:                              ; @.str.11
	.asciz	"  Hostname: "

l_.str.12:                              ; @.str.12
	.asciz	"\n"

l_.str.13:                              ; @.str.13
	.asciz	"  OS: "

l_.str.14:                              ; @.str.14
	.asciz	"  CPU Model: "

l_.str.15:                              ; @.str.15
	.asciz	"  CPU MHz: "

l_.str.16:                              ; @.str.16
	.asciz	"  Memory: "

l_.str.17:                              ; @.str.17
	.asciz	"\n--- Modular Addition (32-bit) ---\n"

l_.str.18:                              ; @.str.18
	.asciz	"std_add    : "

l_.str.19:                              ; @.str.19
	.asciz	" s\n"

l_.str.20:                              ; @.str.20
	.asciz	"reist_add32: "

l_.str.21:                              ; @.str.21
	.asciz	"Speed ratio: "

l_.str.22:                              ; @.str.22
	.asciz	"x (std / REIST)\n"

l_.str.23:                              ; @.str.23
	.asciz	"\n--- ChaCha20-like Cipher-Speed ---\n"

l_.str.24:                              ; @.str.24
	.asciz	"Classic : "

l_.str.25:                              ; @.str.25
	.asciz	" s ("

l_.str.26:                              ; @.str.26
	.asciz	" MB/s)\n"

l_.str.27:                              ; @.str.27
	.asciz	"REIST   : "

l_.str.28:                              ; @.str.28
	.asciz	"x (classic / REIST)\n"

.subsections_via_symbols
