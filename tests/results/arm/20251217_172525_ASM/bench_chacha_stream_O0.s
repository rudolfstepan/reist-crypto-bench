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
	sub	sp, sp, #2560
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	add	x9, sp, #544
	str	x9, [sp, #392]                  ; 8-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	wzr, [sp, #884]
	str	w0, [sp, #880]
	str	x1, [x9, #328]
	mov	x8, #16960                      ; =0x4240
	movk	x8, #15, lsl #16
	str	x8, [x9, #320]
	mov	w8, #47806                      ; =0xbabe
	movk	w8, #51966, lsl #16
	str	w8, [sp, #860]
	ldr	w8, [sp, #880]
	subs	w8, w8, #2
	b.lt	LBB5_5
	b	LBB5_1
LBB5_1:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #328]
	ldr	x1, [x8, #8]
Ltmp2:
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp3:
	b	LBB5_2
LBB5_2:
Ltmp4:
	add	x0, sp, #832
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__16stoullERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	x0, [sp, #384]                  ; 8-byte Folded Spill
Ltmp5:
	b	LBB5_3
LBB5_3:
	ldr	x8, [sp, #384]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #392]                  ; 8-byte Folded Reload
	str	x8, [x9, #320]
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_5
LBB5_4:
Ltmp6:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	str	x0, [x8, #280]
	mov	x8, x1
	str	w8, [sp, #820]
	add	x0, sp, #832
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_112
LBB5_5:
	ldr	w8, [sp, #880]
	subs	w8, w8, #3
	b.lt	LBB5_10
	b	LBB5_6
LBB5_6:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #328]
	ldr	x1, [x8, #16]
Ltmp7:
	add	x0, sp, #792
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp8:
	b	LBB5_7
LBB5_7:
Ltmp10:
	add	x0, sp, #792
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stoulERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	x0, [sp, #376]                  ; 8-byte Folded Spill
Ltmp11:
	b	LBB5_8
LBB5_8:
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	str	w8, [sp, #860]
	add	x0, sp, #792
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_10
LBB5_9:
Ltmp12:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	str	x0, [x8, #280]
	mov	x8, x1
	str	w8, [sp, #820]
	add	x0, sp, #792
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_112
LBB5_10:
	add	x0, sp, #768
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #744
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #720
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
Ltmp13:
	add	x0, sp, #1976
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp14:
	b	LBB5_11
LBB5_11:
	add	x0, sp, #648
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	b	LBB5_12
LBB5_12:                                ; =>This Inner Loop Header: Depth=1
Ltmp15:
	add	x0, sp, #1976
	add	x1, sp, #648
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #368]                  ; 8-byte Folded Spill
Ltmp16:
	b	LBB5_13
LBB5_13:                                ;   in Loop: Header=BB5_12 Depth=1
	ldr	x8, [sp, #368]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp17:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #364]                  ; 4-byte Folded Spill
Ltmp18:
	b	LBB5_14
LBB5_14:                                ;   in Loop: Header=BB5_12 Depth=1
	ldr	w8, [sp, #364]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB5_24
	b	LBB5_15
LBB5_15:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #648
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB5_20
	b	LBB5_16
LBB5_16:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #648
	str	x0, [sp, #352]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #352]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp140:
	add	x8, sp, #624
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp141:
	b	LBB5_17
LBB5_17:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #768
	add	x1, sp, #624
	str	x1, [sp, #344]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #344]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_20
LBB5_18:
Ltmp44:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	str	x0, [x8, #280]
	mov	x8, x1
	str	w8, [sp, #820]
	b	LBB5_111
LBB5_19:
Ltmp144:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	str	x0, [x8, #280]
	mov	x8, x1
	str	w8, [sp, #820]
	add	x0, sp, #648
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1976
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB5_111
LBB5_20:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #648
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB5_23
	b	LBB5_21
LBB5_21:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #648
	str	x0, [sp, #336]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #336]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp142:
	add	x8, sp, #600
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp143:
	b	LBB5_22
LBB5_22:                                ;   in Loop: Header=BB5_12 Depth=1
	add	x0, sp, #744
	add	x1, sp, #600
	str	x1, [sp, #328]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #328]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_23
LBB5_23:                                ;   in Loop: Header=BB5_12 Depth=1
	b	LBB5_12
LBB5_24:
	add	x0, sp, #648
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1976
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp19:
	add	x0, sp, #1400
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp20:
	b	LBB5_25
LBB5_25:
	add	x0, sp, #576
	str	x0, [sp, #312]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100Ev
	ldr	x1, [sp, #312]                  ; 8-byte Folded Reload
Ltmp21:
	add	x0, sp, #1400
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #320]                  ; 8-byte Folded Spill
Ltmp22:
	b	LBB5_26
LBB5_26:
	ldr	x8, [sp, #320]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp23:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbB8ne200100Ev
	str	w0, [sp, #308]                  ; 4-byte Folded Spill
Ltmp24:
	b	LBB5_27
LBB5_27:
	ldr	w8, [sp, #308]                  ; 4-byte Folded Reload
	tbz	w8, #0, LBB5_33
	b	LBB5_28
LBB5_28:
	add	x0, sp, #576
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	adds	x8, x0, #1
	b.eq	LBB5_32
	b	LBB5_29
LBB5_29:
	add	x0, sp, #576
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x2, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne200100EPKcm
	mov	x8, x0
	ldr	x0, [sp, #296]                  ; 8-byte Folded Reload
	add	x1, x8, #2
Ltmp25:
	add	x8, sp, #552
	mov	x2, #-1                         ; =0xffffffffffffffff
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB8ne200100Emm
Ltmp26:
	b	LBB5_30
LBB5_30:
	add	x0, sp, #720
	add	x1, sp, #552
	str	x1, [sp, #288]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #288]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_32
LBB5_31:
Ltmp27:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	str	x0, [x8, #280]
	mov	x8, x1
	str	w8, [sp, #820]
	add	x0, sp, #576
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1400
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	b	LBB5_111
LBB5_32:
	b	LBB5_33
LBB5_33:
	add	x0, sp, #576
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #1400
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
Ltmp28:
	add	x0, sp, #1144
	mov	x1, #256                        ; =0x100
	bl	_gethostname
	str	w0, [sp, #284]                  ; 4-byte Folded Spill
Ltmp29:
	b	LBB5_34
LBB5_34:
	ldr	w8, [sp, #284]                  ; 4-byte Folded Reload
	cbnz	w8, LBB5_37
	b	LBB5_35
LBB5_35:
Ltmp30:
	add	x0, sp, #696
	add	x1, sp, #1144
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
	str	x0, [sp, #272]                  ; 8-byte Folded Spill
Ltmp33:
	b	LBB5_38
LBB5_38:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #272]                  ; 8-byte Folded Reload
	str	x9, [x8]
	ldr	x8, [x8]
	cbz	x8, LBB5_49
	b	LBB5_39
LBB5_39:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	x2, [x8]
Ltmp34:
	add	x0, sp, #1016
	mov	w1, #128                        ; =0x80
	bl	_fgets
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
Ltmp35:
	b	LBB5_40
LBB5_40:
	ldr	x8, [sp, #264]                  ; 8-byte Folded Reload
	cbz	x8, LBB5_47
	b	LBB5_41
LBB5_41:
Ltmp36:
	add	x0, sp, #520
	add	x1, sp, #1016
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne200100ILi0EEEPKc
Ltmp37:
	b	LBB5_42
LBB5_42:
	add	x0, sp, #672
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
	add	x1, sp, #520
	str	x1, [sp, #248]                  ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne200100EOS5_
	ldr	x0, [sp, #248]                  ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp, #256]                  ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB8ne200100Ev
	tbnz	w0, #0, LBB5_46
	b	LBB5_43
LBB5_43:
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4backB8ne200100Ev
	ldrsb	w8, [x0]
	subs	w8, w8, #10
	b.ne	LBB5_46
	b	LBB5_44
LBB5_44:
Ltmp38:
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8pop_backB8ne200100Ev
Ltmp39:
	b	LBB5_45
LBB5_45:
	b	LBB5_46
LBB5_46:
	b	LBB5_47
LBB5_47:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	x0, [x8]
Ltmp40:
	bl	_pclose
Ltmp41:
	b	LBB5_48
LBB5_48:
	b	LBB5_49
LBB5_49:
	str	wzr, [sp, #516]
	b	LBB5_50
LBB5_50:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #516]
	subs	w8, w8, #16
	b.ge	LBB5_53
	b	LBB5_51
LBB5_51:                                ;   in Loop: Header=BB5_50 Depth=1
	ldr	w8, [sp, #516]
	ldr	w9, [sp, #860]
	mul	w8, w8, w9
	ldrsw	x10, [sp, #516]
	add	x9, sp, #952
	str	w8, [x9, x10, lsl #2]
	b	LBB5_52
LBB5_52:                                ;   in Loop: Header=BB5_50 Depth=1
	ldr	w8, [sp, #516]
	add	w8, w8, #1
	str	w8, [sp, #516]
	b	LBB5_50
LBB5_53:
Ltmp42:
	add	x0, sp, #488
	mov	x1, #16                         ; =0x10
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
Ltmp43:
	b	LBB5_54
LBB5_54:
Ltmp45:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #240]                  ; 8-byte Folded Spill
Ltmp46:
	b	LBB5_55
LBB5_55:
Ltmp47:
	mov	w0, #6                          ; =0x6
	bl	__ZNSt3__112setprecisionB8ne200100Ei
	str	w0, [sp, #236]                  ; 4-byte Folded Spill
Ltmp48:
	b	LBB5_56
LBB5_56:
	ldr	x0, [sp, #240]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #236]                  ; 4-byte Folded Reload
	add	x1, sp, #484
	str	w8, [sp, #484]
Ltmp49:
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
Ltmp50:
	b	LBB5_57
LBB5_57:
Ltmp51:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp52:
	b	LBB5_58
LBB5_58:
Ltmp53:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp54:
	b	LBB5_59
LBB5_59:
Ltmp55:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp56:
	b	LBB5_60
LBB5_60:
Ltmp57:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp58:
	b	LBB5_61
LBB5_61:
Ltmp59:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #224]                  ; 8-byte Folded Spill
Ltmp60:
	b	LBB5_62
LBB5_62:
Ltmp61:
	ldr	x0, [sp, #224]                  ; 8-byte Folded Reload
	add	x1, sp, #696
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #216]                  ; 8-byte Folded Spill
Ltmp62:
	b	LBB5_63
LBB5_63:
Ltmp63:
	ldr	x0, [sp, #216]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp64:
	b	LBB5_64
LBB5_64:
Ltmp65:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #208]                  ; 8-byte Folded Spill
Ltmp66:
	b	LBB5_65
LBB5_65:
Ltmp67:
	ldr	x0, [sp, #208]                  ; 8-byte Folded Reload
	add	x1, sp, #672
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
Ltmp68:
	b	LBB5_66
LBB5_66:
Ltmp69:
	ldr	x0, [sp, #200]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp70:
	b	LBB5_67
LBB5_67:
Ltmp71:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
Ltmp72:
	b	LBB5_68
LBB5_68:
Ltmp73:
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	add	x1, sp, #768
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
Ltmp74:
	b	LBB5_69
LBB5_69:
Ltmp75:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp76:
	b	LBB5_70
LBB5_70:
Ltmp77:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
Ltmp78:
	b	LBB5_71
LBB5_71:
Ltmp79:
	ldr	x0, [sp, #176]                  ; 8-byte Folded Reload
	add	x1, sp, #744
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
Ltmp80:
	b	LBB5_72
LBB5_72:
Ltmp81:
	ldr	x0, [sp, #168]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp82:
	b	LBB5_73
LBB5_73:
Ltmp83:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
Ltmp84:
	b	LBB5_74
LBB5_74:
Ltmp85:
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	add	x1, sp, #720
	bl	__ZNSt3__1lsB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp86:
	b	LBB5_75
LBB5_75:
Ltmp87:
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp88:
	b	LBB5_76
LBB5_76:
Ltmp89:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp90:
	b	LBB5_77
LBB5_77:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	add	x0, sp, #448
	add	x9, sp, #888
	str	x9, [sp, #448]
	add	x9, sp, #952
	str	x9, [sp, #456]
	add	x9, sp, #488
	str	x9, [sp, #464]
	ldr	x1, [x8, #320]
Ltmp91:
	bl	__Z11time_streamIZ4mainE3$_0EdOT_m
	str	d0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp92:
	b	LBB5_78
LBB5_78:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #144]                  ; 8-byte Folded Reload
	str	d0, [sp, #472]
	add	x0, sp, #416
	add	x9, sp, #888
	str	x9, [sp, #416]
	add	x9, sp, #952
	str	x9, [sp, #424]
	add	x9, sp, #488
	str	x9, [sp, #432]
	ldr	x1, [x8, #320]
Ltmp93:
	bl	__Z11time_streamIZ4mainE3$_1EdOT_m
	str	d0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp94:
	b	LBB5_79
LBB5_79:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #136]                  ; 8-byte Folded Reload
	str	d0, [sp, #440]
	ldr	d0, [x8, #320]
	ucvtf	d0, d0
	mov	x8, #4634204016564240384        ; =0x4050000000000000
	fmov	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp, #408]
Ltmp95:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp96:
	b	LBB5_80
LBB5_80:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #408]
	mov	x8, #4697254411347427328        ; =0x4130000000000000
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp97:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp98:
	b	LBB5_81
LBB5_81:
Ltmp99:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp100:
	b	LBB5_82
LBB5_82:
Ltmp101:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp102:
	b	LBB5_83
LBB5_83:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #472]
Ltmp103:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp104:
	b	LBB5_84
LBB5_84:
Ltmp105:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp106:
	b	LBB5_85
LBB5_85:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #408]
	ldr	d1, [sp, #472]
	fdiv	d0, d0, d1
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp107:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp108:
	b	LBB5_86
LBB5_86:
Ltmp109:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp110:
	b	LBB5_87
LBB5_87:
Ltmp111:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp112:
	b	LBB5_88
LBB5_88:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #440]
Ltmp113:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp114:
	b	LBB5_89
LBB5_89:
Ltmp115:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp116:
	b	LBB5_90
LBB5_90:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #408]
	ldr	d1, [sp, #440]
	fdiv	d0, d0, d1
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp117:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp118:
	b	LBB5_91
LBB5_91:
Ltmp119:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp120:
	b	LBB5_92
LBB5_92:
	ldr	d0, [sp, #440]
	fcmp	d0, #0.0
	b.le	LBB5_98
	b	LBB5_93
LBB5_93:
Ltmp121:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp122:
	b	LBB5_94
LBB5_94:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #472]
	ldr	d1, [sp, #440]
	fdiv	d0, d0, d1
Ltmp123:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp124:
	b	LBB5_95
LBB5_95:
Ltmp125:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp126:
	b	LBB5_96
LBB5_96:
	b	LBB5_98
LBB5_97:
Ltmp139:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	str	x0, [x8, #280]
	mov	x8, x1
	str	w8, [sp, #820]
	add	x0, sp, #488
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	b	LBB5_111
LBB5_98:
Ltmp127:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp128:
	b	LBB5_99
LBB5_99:
	str	wzr, [sp, #404]
	b	LBB5_100
LBB5_100:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #404]
	subs	w8, w8, #16
	b.ge	LBB5_106
	b	LBB5_101
LBB5_101:                               ;   in Loop: Header=BB5_100 Depth=1
Ltmp133:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__13hexB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__13hexB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp134:
	b	LBB5_102
LBB5_102:                               ;   in Loop: Header=BB5_100 Depth=1
	ldrsw	x1, [sp, #404]
	add	x0, sp, #488
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp135:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp136:
	b	LBB5_103
LBB5_103:                               ;   in Loop: Header=BB5_100 Depth=1
Ltmp137:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp138:
	b	LBB5_104
LBB5_104:                               ;   in Loop: Header=BB5_100 Depth=1
	b	LBB5_105
LBB5_105:                               ;   in Loop: Header=BB5_100 Depth=1
	ldr	w8, [sp, #404]
	add	w8, w8, #1
	str	w8, [sp, #404]
	b	LBB5_100
LBB5_106:
Ltmp129:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__13decB8ne200100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__13decB8ne200100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne200100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp130:
	b	LBB5_107
LBB5_107:
Ltmp131:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne200100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp132:
	b	LBB5_108
LBB5_108:
	str	wzr, [sp, #884]
	add	x0, sp, #488
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #720
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #744
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #768
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #884]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
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
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	add	sp, sp, #2560
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB5_111:
	add	x0, sp, #672
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #696
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #720
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #744
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	add	x0, sp, #768
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB5_112
LBB5_112:
	ldr	x8, [sp, #392]                  ; 8-byte Folded Reload
	ldr	x0, [x8, #280]
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB5_114
LBB5_113:
Ltmp9:
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB5_114
LBB5_114:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
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
	.uleb128 Ltmp44-Lfunc_begin0            ;     jumps to Ltmp44
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp143-Ltmp15                 ;   Call between Ltmp15 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin0           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp44-Lfunc_begin0            ;     jumps to Ltmp44
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp26-Ltmp21                  ;   Call between Ltmp21 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin0            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp43-Ltmp28                  ;   Call between Ltmp28 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin0            ;     jumps to Ltmp44
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp132-Ltmp45                 ;   Call between Ltmp45 and Ltmp132
	.uleb128 Ltmp139-Lfunc_begin0           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Lfunc_end0-Ltmp132             ;   Call between Ltmp132 and Lfunc_end0
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
Ltmp145:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #16
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2B8ne200100EPNS_15basic_streambufIcS2_EE
Ltmp146:
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
Ltmp148:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp149:
	b	LBB8_2
LBB8_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-24]
	ldur	w8, [x29, #-28]
	orr	w2, w8, #0x8
Ltmp151:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp152:
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
Ltmp153:
	mov	w1, #4                          ; =0x4
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp154:
	b	LBB8_5
LBB8_5:
	b	LBB8_9
LBB8_6:
Ltmp147:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB8_11
LBB8_7:
Ltmp150:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB8_10
LBB8_8:
Ltmp155:
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
	.uleb128 Ltmp145-Lfunc_begin1           ;   Call between Lfunc_begin1 and Ltmp145
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp146-Ltmp145                ;   Call between Ltmp145 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin1           ;     jumps to Ltmp147
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp149-Ltmp148                ;   Call between Ltmp148 and Ltmp149
	.uleb128 Ltmp150-Lfunc_begin1           ;     jumps to Ltmp150
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp151-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp154-Ltmp151                ;   Call between Ltmp151 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin1           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp154-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Lfunc_end1-Ltmp154             ;   Call between Ltmp154 and Lfunc_end1
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEC1B8ne200100Em
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
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
	.p2align	2                               ; -- Begin function _Z11time_streamIZ4mainE3$_0EdOT_m
__Z11time_streamIZ4mainE3$_0EdOT_m:     ; @"_Z11time_streamIZ4mainE3$_0EdOT_m"
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
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	__ZZ4mainENK3$_0clEm
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #16
	str	x0, [sp, #16]
	add	x0, sp, #24
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _Z11time_streamIZ4mainE3$_1EdOT_m
__Z11time_streamIZ4mainE3$_1EdOT_m:     ; @"_Z11time_streamIZ4mainE3$_1EdOT_m"
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
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x29, #24
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	__ZZ4mainENK3$_1clEm
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x8, x0
	add	x0, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__16chronomiB8ne200100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	add	x1, sp, #16
	str	x0, [sp, #16]
	add	x0, sp, #24
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1B8ne200100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countB8ne200100Ev
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13hexB8ne200100ERNS_8ios_baseE ; -- Begin function _ZNSt3__13hexB8ne200100ERNS_8ios_baseE
	.globl	__ZNSt3__13hexB8ne200100ERNS_8ios_baseE
	.weak_definition	__ZNSt3__13hexB8ne200100ERNS_8ios_baseE
	.p2align	2
__ZNSt3__13hexB8ne200100ERNS_8ios_baseE: ; @_ZNSt3__13hexB8ne200100ERNS_8ios_baseE
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
	mov	w1, #8                          ; =0x8
	mov	w2, #74                         ; =0x4a
	bl	__ZNSt3__18ios_base4setfB8ne200100Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13decB8ne200100ERNS_8ios_baseE ; -- Begin function _ZNSt3__13decB8ne200100ERNS_8ios_baseE
	.globl	__ZNSt3__13decB8ne200100ERNS_8ios_baseE
	.weak_definition	__ZNSt3__13decB8ne200100ERNS_8ios_baseE
	.p2align	2
__ZNSt3__13decB8ne200100ERNS_8ios_baseE: ; @_ZNSt3__13decB8ne200100ERNS_8ios_baseE
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
	mov	w1, #2                          ; =0x2
	mov	w2, #74                         ; =0x4a
	bl	__ZNSt3__18ios_base4setfB8ne200100Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEED1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
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
	tbz	w0, #0, LBB55_25
	b	LBB55_1
LBB55_1:
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearB8ne200100Ev
	stur	xzr, [x29, #-40]
	b	LBB55_2
LBB55_2:                                ; =>This Inner Loop Header: Depth=1
	b	LBB55_3
LBB55_3:                                ;   in Loop: Header=BB55_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp164:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp165:
	b	LBB55_4
LBB55_4:                                ;   in Loop: Header=BB55_2 Depth=1
Ltmp166:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcB8ne200100Ev
	str	w0, [sp, #28]                   ; 4-byte Folded Spill
Ltmp167:
	b	LBB55_5
LBB55_5:                                ;   in Loop: Header=BB55_2 Depth=1
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne200100Ev
	mov	x1, x0
	ldr	w0, [sp, #24]                   ; 4-byte Folded Reload
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne200100Eii
	tbz	w0, #0, LBB55_12
	b	LBB55_6
LBB55_6:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x2
	stur	w8, [x29, #-24]
	b	LBB55_18
LBB55_7:
Ltmp170:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	b	LBB55_8
LBB55_8:
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
Ltmp171:
	bl	__ZNSt3__18ios_base18__setstate_nothrowB8ne200100Ej
Ltmp172:
	b	LBB55_9
LBB55_9:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp173:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE10exceptionsB8ne200100Ev
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
Ltmp174:
	b	LBB55_10
LBB55_10:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB55_22
	b	LBB55_11
LBB55_11:
Ltmp175:
	bl	___cxa_rethrow
Ltmp176:
	b	LBB55_28
LBB55_12:                               ;   in Loop: Header=BB55_2 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	ldur	w0, [x29, #-44]
	bl	__ZNSt3__111char_traitsIcE12to_char_typeB8ne200100Ei
	strb	w0, [sp, #51]
	ldrsb	w0, [sp, #51]
	ldursb	w1, [x29, #-17]
	bl	__ZNSt3__111char_traitsIcE2eqEcc
	tbz	w0, #0, LBB55_14
	b	LBB55_13
LBB55_13:
	b	LBB55_18
LBB55_14:                               ;   in Loop: Header=BB55_2 Depth=1
	ldur	x0, [x29, #-16]
	ldrsb	w1, [sp, #51]
Ltmp168:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp169:
	b	LBB55_15
LBB55_15:                               ;   in Loop: Header=BB55_2 Depth=1
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	b.ne	LBB55_17
	b	LBB55_16
LBB55_16:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB55_18
LBB55_17:                               ;   in Loop: Header=BB55_2 Depth=1
	b	LBB55_2
LBB55_18:
	ldur	x8, [x29, #-40]
	cbnz	x8, LBB55_20
	b	LBB55_19
LBB55_19:
	ldur	w8, [x29, #-24]
	orr	w8, w8, #0x4
	stur	w8, [x29, #-24]
	b	LBB55_20
LBB55_20:
	b	LBB55_23
LBB55_21:
Ltmp177:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
Ltmp178:
	bl	___cxa_end_catch
Ltmp179:
	b	LBB55_24
LBB55_22:
	bl	___cxa_end_catch
	b	LBB55_23
LBB55_23:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	ldur	w1, [x29, #-24]
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
	b	LBB55_25
LBB55_24:
	b	LBB55_26
LBB55_25:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB55_26:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
LBB55_27:
Ltmp180:
	bl	___clang_call_terminate
LBB55_28:
	brk	#0x1
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table55:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp164-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp164
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp164-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp167-Ltmp164                ;   Call between Ltmp164 and Ltmp167
	.uleb128 Ltmp170-Lfunc_begin2           ;     jumps to Ltmp170
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp167-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp171-Ltmp167                ;   Call between Ltmp167 and Ltmp171
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp171-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp176-Ltmp171                ;   Call between Ltmp171 and Ltmp176
	.uleb128 Ltmp177-Lfunc_begin2           ;     jumps to Ltmp177
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Ltmp169-Ltmp168                ;   Call between Ltmp168 and Ltmp169
	.uleb128 Ltmp170-Lfunc_begin2           ;     jumps to Ltmp170
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp178-Lfunc_begin2           ; >> Call Site 6 <<
	.uleb128 Ltmp179-Ltmp178                ;   Call between Ltmp178 and Ltmp179
	.uleb128 Ltmp180-Lfunc_begin2           ;     jumps to Ltmp180
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp179-Lfunc_begin2           ; >> Call Site 7 <<
	.uleb128 Lfunc_end2-Ltmp179             ;   Call between Ltmp179 and Lfunc_end2
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
Ltmp181:
	bl	__ZNSt3__19use_facetB8ne200100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp182:
	b	LBB56_1
LBB56_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp183:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne200100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp184:
	b	LBB56_2
LBB56_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB56_3:
Ltmp185:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB56_4
LBB56_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table56:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp181-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp181
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp181-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp184-Ltmp181                ;   Call between Ltmp181 and Ltmp184
	.uleb128 Ltmp185-Lfunc_begin3           ;     jumps to Ltmp185
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp184-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp184             ;   Call between Ltmp184 and Lfunc_end3
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
	tbz	w0, #0, LBB58_2
	b	LBB58_1
LBB58_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	add	x1, sp, #15
	strb	wzr, [sp, #15]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB58_3
LBB58_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	add	x1, sp, #14
	strb	wzr, [sp, #14]
	bl	__ZNSt3__111char_traitsIcE6assignB8ne200100ERcRKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB58_3
LBB58_3:
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
	b.ne	LBB60_2
	b	LBB60_1
LBB60_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
	blr	x8
	stur	w0, [x29, #-4]
	b	LBB60_3
LBB60_2:
	ldr	x10, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [x10, #24]
	add	x9, x8, #1
	str	x9, [x10, #24]
	ldrsb	w0, [x8]
	bl	__ZNSt3__111char_traitsIcE11to_int_typeB8ne200100Ec
	stur	w0, [x29, #-4]
	b	LBB60_3
LBB60_3:
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
	tbz	w0, #0, LBB64_2
	b	LBB64_1
LBB64_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB64_3
LBB64_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB64_3
LBB64_3:
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
	b.hi	LBB65_2
	b	LBB65_1
LBB65_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	stur	x8, [x29, #-8]
	b	LBB65_6
LBB65_2:
	strb	wzr, [sp, #23]
	ldrb	w8, [sp, #23]
	tbz	w8, #0, LBB65_4
	b	LBB65_3
LBB65_3:
	ldr	x8, [sp, #24]
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB65_5
LBB65_4:
	ldr	x8, [sp, #24]
	mov	x9, #2                          ; =0x2
	udiv	x8, x8, x9
	subs	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB65_5
LBB65_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB65_6
LBB65_6:
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
	cbz	x8, LBB66_2
	b	LBB66_1
LBB66_1:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w10, [sp, #20]
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB66_3
LBB66_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp, #20]
	orr	w10, w8, #0x1
	ldr	w8, [x9, #32]
	orr	w8, w8, w10
	str	w8, [x9, #32]
	b	LBB66_3
LBB66_3:
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
	b.ls	LBB90_2
	b	LBB90_1
LBB90_1:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB90_7
LBB90_2:
	ldr	x8, [sp, #16]
	cbnz	x8, LBB90_4
	b	LBB90_3
LBB90_3:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	LBB90_7
LBB90_4:
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
	b.ne	LBB90_6
	b	LBB90_5
LBB90_5:
	mov	x8, #-1                         ; =0xffffffffffffffff
	stur	x8, [x29, #-8]
	b	LBB90_7
LBB90_6:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB90_7
LBB90_7:
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
	cbnz	x8, LBB92_2
	b	LBB92_1
LBB92_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB92_13
LBB92_2:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB92_4
	b	LBB92_3
LBB92_3:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB92_13
LBB92_4:
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	b	LBB92_5
LBB92_5:                                ; =>This Inner Loop Header: Depth=1
	b	LBB92_6
LBB92_6:                                ;   in Loop: Header=BB92_5 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	LBB92_8
	b	LBB92_7
LBB92_7:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB92_13
LBB92_8:                                ;   in Loop: Header=BB92_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	add	x1, x8, #1
	add	x2, sp, #7
	bl	__ZNSt3__111char_traitsIcE4findB8ne200100EPKcmRS2_
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB92_10
	b	LBB92_9
LBB92_9:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	LBB92_13
LBB92_10:                               ;   in Loop: Header=BB92_5 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE7compareB8ne200100EPKcS3_m
	cbnz	w0, LBB92_12
	b	LBB92_11
LBB92_11:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB92_13
LBB92_12:                               ;   in Loop: Header=BB92_5 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #1
	stur	x8, [x29, #-16]
	b	LBB92_5
LBB92_13:
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
	cbnz	x8, LBB93_2
	b	LBB93_1
LBB93_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB93_4
LBB93_2:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #16]
	ldrsb	w1, [x8]
	ldr	x2, [sp, #24]
Ltmp205:
	bl	__ZNSt3__118__constexpr_memchrB8ne200100IKccEEPT_S3_T0_m
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp206:
	b	LBB93_3
LBB93_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	b	LBB93_4
LBB93_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB93_5:
Ltmp207:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table93:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp205-Lfunc_begin4           ; >> Call Site 1 <<
	.uleb128 Ltmp206-Ltmp205                ;   Call between Ltmp205 and Ltmp206
	.uleb128 Ltmp207-Lfunc_begin4           ;     jumps to Ltmp207
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
	tbz	w0, #0, LBB97_2
	b	LBB97_1
LBB97_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB97_3
LBB97_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB97_3
LBB97_3:
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
	tbz	w0, #0, LBB101_2
	b	LBB101_1
LBB101_1:
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
	b	LBB101_2
LBB101_2:
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
	tbz	w8, #0, LBB101_5
	b	LBB101_3
LBB101_3:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB101_5
	b	LBB101_4
LBB101_4:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB101_6
LBB101_5:
	ldur	x0, [x29, #-24]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB101_6
LBB101_6:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne200100Ev
	tbnz	w0, #0, LBB101_9
	b	LBB101_7
LBB101_7:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB101_9
	b	LBB101_8
LBB101_8:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne200100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne200100Em
	b	LBB101_9
LBB101_9:
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
	tbz	w0, #0, LBB110_2
	b	LBB110_1
LBB110_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB110_3
LBB110_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB110_3
LBB110_3:
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
	b.ls	LBB112_2
	b	LBB112_1
LBB112_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x1, x8, x9
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__annotate_increaseB8ne200100Em
	b	LBB112_2
LBB112_2:
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
	b.ls	LBB112_4
	b	LBB112_3
LBB112_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__annotate_shrinkB8ne200100Em
	b	LBB112_4
LBB112_4:
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
	tbz	w0, #0, LBB115_2
	b	LBB115_1
LBB115_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB8ne200100Em
	b	LBB115_3
LBB115_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB8ne200100Em
	b	LBB115_3
LBB115_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEEC2B8ne200100Em
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x0, x8, #16
	bl	__ZNSt3__19allocatorIjEC1B8ne200100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, sp, #32
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	ldr	x0, [sp, #32]
	add	x8, sp, #40
	bl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ls	LBB116_5
	b	LBB116_1
LBB116_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp216:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
Ltmp217:
	b	LBB116_2
LBB116_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-24]
Ltmp218:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
Ltmp219:
	b	LBB116_3
LBB116_3:
	b	LBB116_5
LBB116_4:
Ltmp220:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #40
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	b	LBB116_6
LBB116_5:
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB116_6:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table116:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp216-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp216
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp216-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp219-Ltmp216                ;   Call between Ltmp216 and Ltmp219
	.uleb128 Ltmp220-Lfunc_begin5           ;     jumps to Ltmp220
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp219-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp219             ;   Call between Ltmp219 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorIjEC1B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIjEC1B8ne200100Ev
	.globl	__ZNSt3__19allocatorIjEC1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIjEC1B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIjEC1B8ne200100Ev:  ; @_ZNSt3__19allocatorIjEC1B8ne200100Ev
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
	bl	__ZNSt3__19allocatorIjEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne200100INS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE11__vallocateB8ne200100Em
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
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB120_2
	b	LBB120_1
LBB120_1:
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
LBB120_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #16
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
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
	add	x8, x8, x9, lsl #2
	str	x8, [x0, #16]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x2, [x29, #-16]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	ldur	x8, [x29, #-24]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]
	b	LBB121_1
LBB121_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.eq	LBB121_6
	b	LBB121_2
LBB121_2:                               ;   in Loop: Header=BB121_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #40]
	bl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp221:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
Ltmp222:
	b	LBB121_3
LBB121_3:                               ;   in Loop: Header=BB121_1 Depth=1
	b	LBB121_4
LBB121_4:                               ;   in Loop: Header=BB121_1 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	mov	x9, x8
	str	x9, [sp, #40]
	stur	x8, [x29, #-32]
	b	LBB121_1
LBB121_5:
Ltmp223:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	b	LBB121_7
LBB121_6:
	sub	x0, x29, #40
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB121_7:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table121:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp221-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp221
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp221-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp222-Ltmp221                ;   Call between Ltmp221 and Ltmp222
	.uleb128 Ltmp223-Lfunc_begin6           ;     jumps to Ltmp223
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp222-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp222             ;   Call between Ltmp222 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEE10__completeB8ne200100Ev
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED1B8ne200100Ev
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIjEC2B8ne200100Ev ; -- Begin function _ZNSt3__19allocatorIjEC2B8ne200100Ev
	.globl	__ZNSt3__19allocatorIjEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIjEC2B8ne200100Ev
	.p2align	2
__ZNSt3__19allocatorIjEC2B8ne200100Ev:  ; @_ZNSt3__19allocatorIjEC2B8ne200100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIjEEEC2B8ne200100Ev
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC1B8ne200100ES5_
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEEC2B8ne200100ES5_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_ ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC2B8ne200100ERS3_
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
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE8max_sizeB8ne200100Ev
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
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #16
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp228:
	bl	__ZNSt3__13minB8ne200100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp229:
	b	LBB129_1
LBB129_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB129_2:
Ltmp230:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table129:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp228-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp229-Ltmp228                ;   Call between Ltmp228 and Ltmp229
	.uleb128 Ltmp230-Lfunc_begin7           ;     jumps to Ltmp230
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.28@PAGE
	add	x0, x0, l_.str.28@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
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
	bl	__ZNSt3__19allocatorIjE8allocateB8ne200100Em
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
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE14__annotate_newB8ne200100Em
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
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
	bl	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
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
	tbz	w0, #0, LBB136_2
	b	LBB136_1
LBB136_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB136_3
LBB136_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB136_3
LBB136_3:
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
	.private_extern	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev ; -- Begin function _ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	.globl	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev: ; @_ZNKSt3__19allocatorIjE8max_sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #4611686018427387903        ; =0x3fffffffffffffff
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
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
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
Ltmp234:
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp235:
	b	LBB140_1
LBB140_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB140_2:
Ltmp236:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB140_3
LBB140_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table140:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp234-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp234
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp234-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp235-Ltmp234                ;   Call between Ltmp234 and Ltmp235
	.uleb128 Ltmp236-Lfunc_begin8           ;     jumps to Ltmp236
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp235-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp235             ;   Call between Ltmp235 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
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
	.private_extern	__ZNSt3__19allocatorIjE8allocateB8ne200100Em ; -- Begin function _ZNSt3__19allocatorIjE8allocateB8ne200100Em
	.globl	__ZNSt3__19allocatorIjE8allocateB8ne200100Em
	.weak_definition	__ZNSt3__19allocatorIjE8allocateB8ne200100Em
	.p2align	2
__ZNSt3__19allocatorIjE8allocateB8ne200100Em: ; @_ZNSt3__19allocatorIjE8allocateB8ne200100Em
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
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE8max_sizeB8ne200100IS2_Li0EEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	b.ls	LBB143_2
	b	LBB143_1
LBB143_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne200100v
LBB143_2:
	ldr	x0, [sp, #16]
	mov	x1, #4                          ; =0x4
	bl	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
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
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
	.globl	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm: ; @_ZNSt3__117__libcpp_allocateB8ne200100IjEEPT_NS_15__element_countEm
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
	lsl	x8, x8, #2
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	.globl	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm: ; @_ZNSt3__121__libcpp_operator_newB8ne200100IjEEPvm
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC1B8ne200100ERS3_m
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE9constructB8ne200100IjJELi0EEEvRS2_PT_DpOT0_
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
	bl	__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD1B8ne200100Ev
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
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionC2B8ne200100ERS3_m
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
	add	x8, x8, x9, lsl #2
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIjE9constructB8ne200100IjJEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	str	wzr, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE21_ConstructTransactionD2B8ne200100Ev
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
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne200100Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
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
	tbnz	w8, #0, LBB154_3
	b	LBB154_1
LBB154_1:
Ltmp241:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
Ltmp242:
	b	LBB154_2
LBB154_2:
	b	LBB154_3
LBB154_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB154_4:
Ltmp243:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table154:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp241-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp242-Ltmp241                ;   Call between Ltmp241 and Ltmp242
	.uleb128 Ltmp243-Lfunc_begin9           ;     jumps to Ltmp243
	.byte	1                               ;   On action: 1
Lcst_end9:
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
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
	cbz	x8, LBB155_2
	b	LBB155_1
LBB155_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	add	x9, x9, #16
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	b	LBB155_2
LBB155_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE5clearB8ne200100Ev
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
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_deleteB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE10deallocateB8ne200100ERS2_Pjm
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
	bl	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE8capacityB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE4sizeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #4                          ; =0x4
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	.weak_definition	__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEE22__base_destruct_at_endB8ne200100EPj
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
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
	b	LBB161_1
LBB161_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB161_4
	b	LBB161_2
LBB161_2:                               ;   in Loop: Header=BB161_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #4
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne200100IjEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp247:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
Ltmp248:
	b	LBB161_3
LBB161_3:                               ;   in Loop: Header=BB161_1 Depth=1
	b	LBB161_1
LBB161_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB161_5:
Ltmp249:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table161:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp247-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp248-Ltmp247                ;   Call between Ltmp247 and Ltmp248
	.uleb128 Ltmp249-Lfunc_begin10          ;     jumps to Ltmp249
	.byte	1                               ;   On action: 1
Lcst_end10:
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
	.private_extern	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em ; -- Begin function _ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	.globl	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	.weak_definition	__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
	.p2align	2
__ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em: ; @_ZNKSt3__16vectorIjNS_9allocatorIjEEE17__annotate_shrinkB8ne200100Em
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
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIjEEE7destroyB8ne200100IjLi0EEEvRS2_PT_
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
	bl	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj ; -- Begin function _ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	.globl	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	.weak_definition	__ZNSt3__19allocatorIjE7destroyB8ne200100EPj
	.p2align	2
__ZNSt3__19allocatorIjE7destroyB8ne200100EPj: ; @_ZNSt3__19allocatorIjE7destroyB8ne200100EPj
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
	.private_extern	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm ; -- Begin function _ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	.globl	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	.weak_definition	__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
	.p2align	2
__ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm: ; @_ZNSt3__19allocatorIjE10deallocateB8ne200100EPjm
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
	mov	x2, #4                          ; =0x4
	bl	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm: ; @_ZNSt3__119__libcpp_deallocateB8ne200100IjEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm
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
	lsl	x8, x8, #2
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPjEEEvDpT_
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
	.private_extern	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev ; -- Begin function _ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	.globl	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
	.p2align	2
__ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev: ; @_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne200100Ev
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
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
Ltmp252:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorC1B8ne200100ERS3_
Ltmp253:
	b	LBB168_1
LBB168_1:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEE16__destroy_vectorclB8ne200100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB168_2:
Ltmp254:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table168:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp252-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp253-Ltmp252                ;   Call between Ltmp252 and Ltmp253
	.uleb128 Ltmp254-Lfunc_begin11          ;     jumps to Ltmp254
	.byte	1                               ;   On action: 1
Lcst_end11:
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
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
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
Ltmp256:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp257:
	b	LBB170_1
LBB170_1:
Ltmp259:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne200100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp260:
	b	LBB170_2
LBB170_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB170_18
	b	LBB170_3
LBB170_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne200100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp261:
	bl	__ZNKSt3__18ios_base5flagsB8ne200100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp262:
	b	LBB170_4
LBB170_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB170_6
	b	LBB170_5
LBB170_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB170_7
LBB170_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB170_7
LBB170_7:
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
Ltmp263:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne200100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp264:
	b	LBB170_8
LBB170_8:
	ldr	w5, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp265:
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp266:
	b	LBB170_9
LBB170_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne200100Ev
	tbz	w0, #0, LBB170_17
	b	LBB170_10
LBB170_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp267:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne200100Ej
Ltmp268:
	b	LBB170_11
LBB170_11:
	b	LBB170_17
LBB170_12:
Ltmp258:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB170_14
LBB170_13:
Ltmp269:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB170_14
LBB170_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp270:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp271:
	b	LBB170_15
LBB170_15:
	bl	___cxa_end_catch
	b	LBB170_16
LBB170_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB170_17:
	b	LBB170_18
LBB170_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB170_16
LBB170_19:
Ltmp272:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp273:
	bl	___cxa_end_catch
Ltmp274:
	b	LBB170_20
LBB170_20:
	b	LBB170_21
LBB170_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB170_22:
Ltmp275:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table170:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp256-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp257-Ltmp256                ;   Call between Ltmp256 and Ltmp257
	.uleb128 Ltmp258-Lfunc_begin12          ;     jumps to Ltmp258
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp259-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp268-Ltmp259                ;   Call between Ltmp259 and Ltmp268
	.uleb128 Ltmp269-Lfunc_begin12          ;     jumps to Ltmp269
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp268-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Ltmp270-Ltmp268                ;   Call between Ltmp268 and Ltmp270
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp270-Lfunc_begin12          ; >> Call Site 4 <<
	.uleb128 Ltmp271-Ltmp270                ;   Call between Ltmp270 and Ltmp271
	.uleb128 Ltmp272-Lfunc_begin12          ;     jumps to Ltmp272
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp271-Lfunc_begin12          ; >> Call Site 5 <<
	.uleb128 Ltmp273-Ltmp271                ;   Call between Ltmp271 and Ltmp273
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp273-Lfunc_begin12          ; >> Call Site 6 <<
	.uleb128 Ltmp274-Ltmp273                ;   Call between Ltmp273 and Ltmp274
	.uleb128 Ltmp275-Lfunc_begin12          ;     jumps to Ltmp275
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp274-Lfunc_begin12          ; >> Call Site 7 <<
	.uleb128 Lfunc_end12-Ltmp274            ;   Call between Ltmp274 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
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
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
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
	cbnz	x8, LBB172_2
	b	LBB172_1
LBB172_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB172_23
LBB172_2:
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
	b.le	LBB172_4
	b	LBB172_3
LBB172_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB172_5
LBB172_4:
	str	xzr, [sp, #72]
	b	LBB172_5
LBB172_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB172_9
	b	LBB172_6
LBB172_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB172_8
	b	LBB172_7
LBB172_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB172_23
LBB172_8:
	b	LBB172_9
LBB172_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	b.le	LBB172_18
	b	LBB172_10
LBB172_10:
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
Ltmp277:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp278:
	b	LBB172_11
LBB172_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.eq	LBB172_14
	b	LBB172_12
LBB172_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB172_15
LBB172_13:
Ltmp279:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB172_24
LBB172_14:
	str	wzr, [sp, #24]
	b	LBB172_15
LBB172_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	cbz	w8, LBB172_17
	b	LBB172_16
LBB172_16:
	b	LBB172_23
LBB172_17:
	b	LBB172_18
LBB172_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	b.le	LBB172_22
	b	LBB172_19
LBB172_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne200100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	b.eq	LBB172_21
	b	LBB172_20
LBB172_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB172_23
LBB172_21:
	b	LBB172_22
LBB172_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne200100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB172_23
LBB172_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB172_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table172:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp277-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp277
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp277-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp278-Ltmp277                ;   Call between Ltmp277 and Ltmp278
	.uleb128 Ltmp279-Lfunc_begin13          ;     jumps to Ltmp279
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp278-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp278            ;   Call between Ltmp278 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
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
	tbnz	w0, #0, LBB175_2
	b	LBB175_1
LBB175_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne200100Ec
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne200100Ei
	b	LBB175_2
LBB175_2:
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
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
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
Ltmp284:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne200100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp285:
	b	LBB182_1
LBB182_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB182_2:
Ltmp286:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table182:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp284-Lfunc_begin14          ; >> Call Site 1 <<
	.uleb128 Ltmp285-Ltmp284                ;   Call between Ltmp284 and Ltmp285
	.uleb128 Ltmp286-Lfunc_begin14          ;     jumps to Ltmp286
	.byte	1                               ;   On action: 1
Lcst_end14:
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
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clEm
__ZZ4mainENK3$_0clEm:                   ; @"_ZZ4mainENK3$_0clEm"
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
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	xzr, [sp, #24]
	b	LBB186_1
LBB186_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB186_3 Depth 2
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.hs	LBB186_8
	b	LBB186_2
LBB186_2:                               ;   in Loop: Header=BB186_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	bl	__Z16chacha_block_stdPjPKj
	str	wzr, [sp, #20]
	b	LBB186_3
LBB186_3:                               ;   Parent Loop BB186_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	subs	w8, w8, #16
	b.ge	LBB186_6
	b	LBB186_4
LBB186_4:                               ;   in Loop: Header=BB186_3 Depth=2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldrsw	x10, [sp, #20]
	ldr	w9, [x9, x10, lsl #2]
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	ldr	x0, [x8, #16]
	ldrsw	x1, [sp, #20]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w8, [x0]
	eor	w8, w8, w9
	str	w8, [x0]
	b	LBB186_5
LBB186_5:                               ;   in Loop: Header=BB186_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB186_3
LBB186_6:                               ;   in Loop: Header=BB186_1 Depth=1
	b	LBB186_7
LBB186_7:                               ;   in Loop: Header=BB186_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB186_1
LBB186_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
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
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_1clEm
__ZZ4mainENK3$_1clEm:                   ; @"_ZZ4mainENK3$_1clEm"
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
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	xzr, [sp, #24]
	b	LBB200_1
LBB200_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB200_3 Depth 2
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.hs	LBB200_8
	b	LBB200_2
LBB200_2:                               ;   in Loop: Header=BB200_1 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	bl	__Z18chacha_block_reistPjPKj
	str	wzr, [sp, #20]
	b	LBB200_3
LBB200_3:                               ;   Parent Loop BB200_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	subs	w8, w8, #16
	b.ge	LBB200_6
	b	LBB200_4
LBB200_4:                               ;   in Loop: Header=BB200_3 Depth=2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldrsw	x10, [sp, #20]
	ldr	w9, [x9, x10, lsl #2]
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	ldr	x0, [x8, #16]
	ldrsw	x1, [sp, #20]
	bl	__ZNSt3__16vectorIjNS_9allocatorIjEEEixB8ne200100Em
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w8, [x0]
	eor	w8, w8, w9
	str	w8, [x0]
	b	LBB200_5
LBB200_5:                               ;   in Loop: Header=BB200_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB200_3
LBB200_6:                               ;   in Loop: Header=BB200_1 Depth=1
	b	LBB200_7
LBB200_7:                               ;   in Loop: Header=BB200_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB200_1
LBB200_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
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
	.asciz	"ChaCha20 Stream Benchmark\n"

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
	.asciz	"========================================\n\n"

l_.str.18:                              ; @.str.18
	.asciz	"ChaCha20-like keystream benchmark ("

l_.str.19:                              ; @.str.19
	.asciz	" MB total)\n\n"

l_.str.20:                              ; @.str.20
	.asciz	"Classic : "

l_.str.21:                              ; @.str.21
	.asciz	" s ("

l_.str.22:                              ; @.str.22
	.asciz	" MB/s)\n"

l_.str.23:                              ; @.str.23
	.asciz	"REIST   : "

l_.str.24:                              ; @.str.24
	.asciz	"Speed ratio (classic / REIST): "

l_.str.25:                              ; @.str.25
	.asciz	"x\n"

l_.str.26:                              ; @.str.26
	.asciz	"\nSink XOR: "

l_.str.27:                              ; @.str.27
	.asciz	" "

l_.str.28:                              ; @.str.28
	.asciz	"vector"

.subsections_via_symbols
