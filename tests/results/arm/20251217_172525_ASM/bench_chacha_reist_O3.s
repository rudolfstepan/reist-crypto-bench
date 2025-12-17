	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 26, 0	sdk_version 26, 2
	.globl	__Z16chacha_block_stdPjPKj      ; -- Begin function _Z16chacha_block_stdPjPKj
	.p2align	2
__Z16chacha_block_stdPjPKj:             ; @_Z16chacha_block_stdPjPKj
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	ldp	w12, w11, [x1]
	ldp	w13, w10, [x1, #16]
	ldp	w14, w9, [x1, #32]
	ldp	w15, w8, [x1, #48]
	add	w16, w12, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w16, w13
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	ldp	w17, w2, [x1, #8]
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	ldp	w3, w4, [x1, #24]
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	ldp	w5, w6, [x1, #40]
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	ldp	w7, w19, [x1, #56]
	add	w12, w12, w16
	str	w12, [x0]
	ldr	w12, [x1, #4]
	add	w11, w12, w11
	str	w11, [x0, #4]
	ldr	w11, [x1, #8]
	add	w11, w11, w17
	str	w11, [x0, #8]
	ldr	w11, [x1, #12]
	add	w11, w11, w2
	str	w11, [x0, #12]
	ldr	w11, [x1, #16]
	add	w11, w11, w13
	str	w11, [x0, #16]
	ldr	w11, [x1, #20]
	add	w10, w11, w10
	str	w10, [x0, #20]
	ldr	w10, [x1, #24]
	add	w10, w10, w3
	str	w10, [x0, #24]
	ldr	w10, [x1, #28]
	add	w10, w10, w4
	str	w10, [x0, #28]
	ldr	w10, [x1, #32]
	add	w10, w10, w14
	str	w10, [x0, #32]
	ldr	w10, [x1, #36]
	add	w9, w10, w9
	str	w9, [x0, #36]
	ldr	w9, [x1, #40]
	add	w9, w9, w5
	str	w9, [x0, #40]
	ldr	w9, [x1, #44]
	add	w9, w9, w6
	str	w9, [x0, #44]
	ldr	w9, [x1, #48]
	add	w9, w9, w15
	str	w9, [x0, #48]
	ldr	w9, [x1, #52]
	add	w8, w9, w8
	str	w8, [x0, #52]
	ldr	w8, [x1, #56]
	add	w8, w8, w7
	str	w8, [x0, #56]
	ldr	w8, [x1, #60]
	add	w8, w8, w19
	str	w8, [x0, #60]
	ldp	x20, x19, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18chacha_block_reistPjPKj    ; -- Begin function _Z18chacha_block_reistPjPKj
	.p2align	2
__Z18chacha_block_reistPjPKj:           ; @_Z18chacha_block_reistPjPKj
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	ldp	w12, w11, [x1]
	ldp	w13, w10, [x1, #16]
	ldp	w14, w9, [x1, #32]
	ldp	w15, w8, [x1, #48]
	add	w16, w13, w12
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w15, w16
	ror	w15, w15, #16
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #16
	ldp	w17, w2, [x1, #8]
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #20
	ldp	w3, w4, [x1, #24]
	add	w16, w13, w16
	eor	w15, w16, w15
	ror	w15, w15, #24
	ldp	w5, w6, [x1, #40]
	add	w14, w15, w14
	eor	w13, w14, w13
	ror	w13, w13, #25
	ldp	w7, w19, [x1, #56]
	add	w12, w12, w16
	str	w12, [x0]
	ldr	w12, [x1, #4]
	add	w11, w12, w11
	str	w11, [x0, #4]
	ldr	w11, [x1, #8]
	add	w11, w11, w17
	str	w11, [x0, #8]
	ldr	w11, [x1, #12]
	add	w11, w11, w2
	str	w11, [x0, #12]
	ldr	w11, [x1, #16]
	add	w11, w11, w13
	str	w11, [x0, #16]
	ldr	w11, [x1, #20]
	add	w10, w11, w10
	str	w10, [x0, #20]
	ldr	w10, [x1, #24]
	add	w10, w10, w3
	str	w10, [x0, #24]
	ldr	w10, [x1, #28]
	add	w10, w10, w4
	str	w10, [x0, #28]
	ldr	w10, [x1, #32]
	add	w10, w10, w14
	str	w10, [x0, #32]
	ldr	w10, [x1, #36]
	add	w9, w10, w9
	str	w9, [x0, #36]
	ldr	w9, [x1, #40]
	add	w9, w9, w5
	str	w9, [x0, #40]
	ldr	w9, [x1, #44]
	add	w9, w9, w6
	str	w9, [x0, #44]
	ldr	w9, [x1, #48]
	add	w9, w9, w15
	str	w9, [x0, #48]
	ldr	w9, [x1, #52]
	add	w8, w9, w8
	str	w8, [x0, #52]
	ldr	w8, [x1, #56]
	add	w8, w8, w7
	str	w8, [x0, #56]
	ldr	w8, [x1, #60]
	add	w8, w8, w19
	str	w8, [x0, #60]
	ldp	x20, x19, [sp], #16             ; 16-byte Folded Reload
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
	stp	d11, d10, [sp, #-128]!          ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	sub	sp, sp, #896
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
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-128]
	mov	x25, #-9                        ; =0xfffffffffffffff7
	movk	x25, #32767, lsl #48
	cmp	w0, #2
	b.lt	LBB2_4
; %bb.1:
	mov	x20, x1
	mov	x21, x0
	ldr	x22, [x1, #8]
	mov	x0, x22
	bl	_strlen
	cmp	x0, x25
	b.hi	LBB2_198
; %bb.2:
	mov	x19, x0
	cmp	x0, #23
	b.hs	LBB2_5
; %bb.3:
	strb	w19, [sp, #327]
	add	x23, sp, #304
	cbnz	x19, LBB2_6
	b	LBB2_7
LBB2_4:
	mov	w8, #16960                      ; =0x4240
	movk	w8, #15, lsl #16
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB2_20
LBB2_5:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
	mov	x0, x24
	bl	__Znwm
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x19, x8, [sp, #312]
	str	x0, [sp, #304]
LBB2_6:
	mov	x0, x23
	mov	x1, x22
	mov	x2, x19
	bl	_memmove
LBB2_7:
	strb	wzr, [x23, x19]
Ltmp0:
	add	x0, sp, #304
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp1:
; %bb.8:
	ldrsb	w8, [sp, #327]
	tbnz	w8, #31, LBB2_10
; %bb.9:
	cmp	w21, #2
	b.ne	LBB2_11
	b	LBB2_20
LBB2_10:
	ldr	x0, [sp, #304]
	bl	__ZdlPv
	cmp	w21, #2
	b.eq	LBB2_20
LBB2_11:
	ldr	x21, [x20, #16]
	mov	x0, x21
	bl	_strlen
	cmp	x0, x25
	b.hi	LBB2_200
; %bb.12:
	mov	x20, x0
	cmp	x0, #23
	b.hs	LBB2_14
; %bb.13:
	strb	w20, [sp, #327]
	add	x22, sp, #304
	cbnz	x20, LBB2_16
	b	LBB2_17
LBB2_14:
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp3:
	mov	x0, x23
	bl	__Znwm
Ltmp4:
; %bb.15:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [sp, #312]
	str	x0, [sp, #304]
LBB2_16:
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
LBB2_17:
	strb	wzr, [x22, x20]
Ltmp5:
	add	x0, sp, #304
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stoulERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp6:
; %bb.18:
	ldrsb	w8, [sp, #327]
	tbz	w8, #31, LBB2_20
; %bb.19:
	ldr	x0, [sp, #304]
	bl	__ZdlPv
LBB2_20:
	stp	xzr, xzr, [sp, #144]
	str	xzr, [sp, #160]
	stp	xzr, xzr, [sp, #112]
	str	xzr, [sp, #128]
	stp	xzr, xzr, [sp, #80]
	str	xzr, [sp, #96]
	stp	xzr, xzr, [sp, #56]
	str	xzr, [sp, #72]
	stp	xzr, xzr, [sp, #32]
	str	xzr, [sp, #48]
Ltmp11:
Lloh3:
	adrp	x1, l_.str@PAGE
Lloh4:
	add	x1, x1, l_.str@PAGEOFF
	add	x0, sp, #304
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp12:
; %bb.21:
	stp	xzr, xzr, [sp, #176]
	mov	w19, #19744                     ; =0x4d20
	movk	w19, #31304, lsl #16
	str	xzr, [sp, #192]
	mov	x25, #28525                     ; =0x6f6d
	movk	x25, #25956, lsl #16
	movk	x25, #8300, lsl #32
	movk	x25, #24942, lsl #48
	mov	w24, #25965                     ; =0x656d
	b	LBB2_24
LBB2_22:                                ;   in Loop: Header=BB2_24 Depth=1
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #135]
	tbnz	w8, #31, LBB2_76
LBB2_23:                                ;   in Loop: Header=BB2_24 Depth=1
	ldur	q0, [sp, #8]
	str	q0, [sp, #112]
	ldr	x8, [sp, #24]
	str	x8, [sp, #128]
LBB2_24:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_31 Depth 2
                                        ;     Child Loop BB2_37 Depth 2
                                        ;     Child Loop BB2_52 Depth 2
                                        ;     Child Loop BB2_58 Depth 2
	ldr	x8, [sp, #304]
	ldur	x9, [x8, #-24]
Ltmp14:
	add	x8, sp, #8
	add	x10, sp, #304
	add	x0, x10, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp15:
; %bb.25:                               ;   in Loop: Header=BB2_24 Depth=1
Ltmp16:
	add	x0, sp, #8
Lloh5:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh6:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp17:
; %bb.26:                               ;   in Loop: Header=BB2_24 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp18:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp19:
; %bb.27:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x21, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp21:
	add	x0, sp, #304
	add	x1, sp, #176
	mov	x2, x21
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp22:
; %bb.28:                               ;   in Loop: Header=BB2_24 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w22, [sp, #199]
	sxtb	w20, w22
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB2_77
; %bb.29:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	w20, #0
	ldp	x27, x23, [sp, #176]
	add	x8, sp, #176
	csel	x21, x27, x8, lt
	csel	x8, x23, x22, lt
	cmp	x8, #10
	b.lt	LBB2_50
; %bb.30:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x26, x21, x8
	mov	x28, x8
	mov	x0, x21
LBB2_31:                                ;   Parent Loop BB2_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #9
	mov	w1, #109                        ; =0x6d
	bl	_memchr
	cbz	x0, LBB2_50
; %bb.32:                               ;   in Loop: Header=BB2_31 Depth=2
	ldr	x8, [x0]
	ldrh	w9, [x0, #8]
	cmp	x8, x25
	ccmp	w9, w24, #0, eq
	b.eq	LBB2_34
; %bb.33:                               ;   in Loop: Header=BB2_31 Depth=2
	add	x0, x0, #1
	sub	x8, x26, x0
	cmp	x8, #10
	b.ge	LBB2_31
	b	LBB2_50
LBB2_34:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x0, x26
	b.eq	LBB2_50
; %bb.35:                               ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x21
	cmn	x8, #1
	b.eq	LBB2_50
; %bb.36:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x2, x28
	mov	x0, x21
	mov	x28, #-9                        ; =0xfffffffffffffff7
	movk	x28, #32767, lsl #48
LBB2_37:                                ;   Parent Loop BB2_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	bl	_memchr
	cbz	x0, LBB2_40
; %bb.38:                               ;   in Loop: Header=BB2_37 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB2_41
; %bb.39:                               ;   in Loop: Header=BB2_37 Depth=2
	add	x0, x0, #1
	sub	x2, x26, x0
	cmp	x2, #0
	b.gt	LBB2_37
LBB2_40:                                ;   in Loop: Header=BB2_24 Depth=1
	mov	x0, x26
LBB2_41:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x21
	add	x8, x8, #2
	cmp	x0, x26
	csinc	x26, x8, xzr, ne
	tbnz	w20, #31, LBB2_44
; %bb.42:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x26, x22
	b.hi	LBB2_194
; %bb.43:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x27, sp, #176
	mov	x23, x22
	b	LBB2_45
LBB2_44:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x23, x26
	b.lo	LBB2_194
LBB2_45:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x21, x23, x26
	cmp	x21, x28
	b.hi	LBB2_195
; %bb.46:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x21, #23
	b.hs	LBB2_65
; %bb.47:                               ;   in Loop: Header=BB2_24 Depth=1
	strb	w21, [sp, #31]
	add	x22, sp, #8
	cmp	x23, x26
	b.ne	LBB2_67
; %bb.48:                               ;   in Loop: Header=BB2_24 Depth=1
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #167]
	tbnz	w8, #31, LBB2_68
LBB2_49:                                ;   in Loop: Header=BB2_24 Depth=1
	ldur	q0, [sp, #8]
	str	q0, [sp, #144]
	ldr	x8, [sp, #24]
	str	x8, [sp, #160]
	ldrb	w22, [sp, #199]
	ldp	x27, x23, [sp, #176]
	mov	x20, x22
LBB2_50:                                ;   in Loop: Header=BB2_24 Depth=1
	sxtb	w8, w20
	cmp	w8, #0
	add	x8, sp, #176
	csel	x26, x27, x8, lt
	csel	x21, x23, x22, lt
	cmp	x21, #7
	b.lt	LBB2_24
; %bb.51:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x28, x26, x21
	mov	x8, x21
	mov	x0, x26
LBB2_52:                                ;   Parent Loop BB2_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #6
	mov	w1, #99                         ; =0x63
	bl	_memchr
	cbz	x0, LBB2_24
; %bb.53:                               ;   in Loop: Header=BB2_52 Depth=2
	ldr	w8, [x0]
	ldur	w9, [x0, #3]
	mov	w10, #28771                     ; =0x7063
	movk	w10, #8309, lsl #16
	cmp	w8, w10
	ccmp	w9, w19, #0, eq
	b.eq	LBB2_55
; %bb.54:                               ;   in Loop: Header=BB2_52 Depth=2
	add	x0, x0, #1
	sub	x8, x28, x0
	cmp	x8, #7
	b.ge	LBB2_52
	b	LBB2_24
LBB2_55:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x0, x28
	b.eq	LBB2_24
; %bb.56:                               ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x26
	cmn	x8, #1
	b.eq	LBB2_24
; %bb.57:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x0, x26
LBB2_58:                                ;   Parent Loop BB2_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	mov	x2, x21
	bl	_memchr
	cbz	x0, LBB2_61
; %bb.59:                               ;   in Loop: Header=BB2_58 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB2_62
; %bb.60:                               ;   in Loop: Header=BB2_58 Depth=2
	add	x0, x0, #1
	sub	x21, x28, x0
	cmp	x21, #0
	b.gt	LBB2_58
LBB2_61:                                ;   in Loop: Header=BB2_24 Depth=1
	mov	x0, x28
LBB2_62:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x26
	add	x8, x8, #2
	cmp	x0, x28
	csinc	x26, x8, xzr, ne
	tbnz	w20, #7, LBB2_69
; %bb.63:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x26, x22
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	b.hi	LBB2_196
; %bb.64:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x27, sp, #176
	mov	x23, x22
	b	LBB2_70
LBB2_65:                                ;   in Loop: Header=BB2_24 Depth=1
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp147:
	mov	x0, x23
	bl	__Znwm
Ltmp148:
; %bb.66:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [sp, #16]
	str	x0, [sp, #8]
LBB2_67:                                ;   in Loop: Header=BB2_24 Depth=1
	add	x1, x27, x26
	mov	x0, x22
	mov	x2, x21
	bl	_memmove
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB2_49
LBB2_68:                                ;   in Loop: Header=BB2_24 Depth=1
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	b	LBB2_49
LBB2_69:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x23, x26
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	b.lo	LBB2_196
LBB2_70:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x21, x23, x26
	cmp	x21, x8
	b.hi	LBB2_197
; %bb.71:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x21, #23
	b.hs	LBB2_73
; %bb.72:                               ;   in Loop: Header=BB2_24 Depth=1
	strb	w21, [sp, #31]
	add	x22, sp, #8
	cmp	x23, x26
	b.ne	LBB2_75
	b	LBB2_22
LBB2_73:                                ;   in Loop: Header=BB2_24 Depth=1
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp155:
	mov	x0, x23
	bl	__Znwm
Ltmp156:
; %bb.74:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [sp, #16]
	str	x0, [sp, #8]
LBB2_75:                                ;   in Loop: Header=BB2_24 Depth=1
	add	x1, x27, x26
	mov	x0, x22
	mov	x2, x21
	bl	_memmove
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #135]
	tbz	w8, #31, LBB2_23
LBB2_76:                                ;   in Loop: Header=BB2_24 Depth=1
	ldr	x0, [sp, #112]
	bl	__ZdlPv
	b	LBB2_23
LBB2_77:
	tbz	w20, #31, LBB2_79
; %bb.78:
	ldr	x0, [sp, #176]
	bl	__ZdlPv
LBB2_79:
Lloh7:
	adrp	x19, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh8:
	ldr	x19, [x19, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x23, [x19]
	str	x23, [sp, #304]
	ldr	x24, [x19, #24]
	ldur	x8, [x23, #-24]
	add	x20, sp, #304
	str	x24, [x20, x8]
	add	x0, x20, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #304
	add	x1, x19, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x20, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp24:
Lloh9:
	adrp	x1, l_.str.4@PAGE
Lloh10:
	add	x1, x1, l_.str.4@PAGEOFF
	add	x20, sp, #304
	add	x0, sp, #304
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp25:
; %bb.80:
	stp	xzr, xzr, [sp, #176]
	str	xzr, [sp, #192]
	ldr	x8, [sp, #304]
	ldur	x9, [x8, #-24]
Ltmp27:
	add	x8, sp, #8
	add	x0, x20, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp28:
; %bb.81:
Ltmp29:
Lloh11:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh12:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp30:
; %bb.82:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp31:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp32:
; %bb.83:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp34:
	add	x0, sp, #304
	add	x1, sp, #176
	mov	x2, x20
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp35:
; %bb.84:
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB2_110
; %bb.85:
	ldrsb	x21, [sp, #199]
	add	x8, sp, #176
	ldp	x25, x22, [sp, #176]
	cmp	x21, #0
	csel	x26, x25, x8, lt
	cmp	w21, #0
	csel	x20, x22, x21, lt
	cmp	x20, #8
	b.lt	LBB2_110
; %bb.86:
	add	x27, x26, x20
	mov	x28, #25933                     ; =0x654d
	movk	x28, #21613, lsl #16
	movk	x28, #29807, lsl #32
	movk	x28, #27745, lsl #48
	mov	x8, x20
	mov	x0, x26
LBB2_87:                                ; =>This Inner Loop Header: Depth=1
	sub	x2, x8, #7
	mov	w1, #77                         ; =0x4d
	bl	_memchr
	cbz	x0, LBB2_110
; %bb.88:                               ;   in Loop: Header=BB2_87 Depth=1
	ldr	x8, [x0]
	cmp	x8, x28
	b.eq	LBB2_90
; %bb.89:                               ;   in Loop: Header=BB2_87 Depth=1
	add	x0, x0, #1
	sub	x8, x27, x0
	cmp	x8, #8
	b.ge	LBB2_87
	b	LBB2_110
LBB2_90:
	cmp	x0, x27
	b.eq	LBB2_110
; %bb.91:
	sub	x8, x0, x26
	cmn	x8, #1
	b.eq	LBB2_110
; %bb.92:
	mov	x0, x26
	mov	x28, #-9                        ; =0xfffffffffffffff7
	movk	x28, #32767, lsl #48
LBB2_93:                                ; =>This Inner Loop Header: Depth=1
	mov	w1, #58                         ; =0x3a
	mov	x2, x20
	bl	_memchr
	cbz	x0, LBB2_96
; %bb.94:                               ;   in Loop: Header=BB2_93 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB2_97
; %bb.95:                               ;   in Loop: Header=BB2_93 Depth=1
	add	x0, x0, #1
	sub	x20, x27, x0
	cmp	x20, #0
	b.gt	LBB2_93
LBB2_96:
	mov	x0, x27
LBB2_97:
	sub	x8, x0, x26
	add	x8, x8, #2
	cmp	x0, x27
	csinc	x26, x8, xzr, ne
	tbnz	w21, #31, LBB2_100
; %bb.98:
	cmp	x26, x21
	b.hi	LBB2_201
; %bb.99:
	add	x25, sp, #176
	mov	x22, x21
	b	LBB2_101
LBB2_100:
	cmp	x22, x26
	b.lo	LBB2_201
LBB2_101:
	sub	x20, x22, x26
	cmp	x20, x28
	b.hi	LBB2_202
; %bb.102:
	cmp	x20, #23
	b.hs	LBB2_104
; %bb.103:
	strb	w20, [sp, #31]
	add	x21, sp, #8
	cmp	x22, x26
	b.ne	LBB2_106
	b	LBB2_107
LBB2_104:
	orr	x8, x20, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x22, x9, x8, eq
Ltmp37:
	mov	x0, x22
	bl	__Znwm
Ltmp38:
; %bb.105:
	mov	x21, x0
	orr	x8, x22, #0x8000000000000000
	stp	x20, x8, [sp, #16]
	str	x0, [sp, #8]
LBB2_106:
	add	x1, x25, x26
	mov	x0, x21
	mov	x2, x20
	bl	_memmove
LBB2_107:
	strb	wzr, [x21, x20]
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB2_109
; %bb.108:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
LBB2_109:
	ldur	q0, [sp, #8]
	str	q0, [sp, #80]
	ldr	x8, [sp, #24]
	str	x8, [sp, #96]
LBB2_110:
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB2_112
; %bb.111:
	ldr	x0, [sp, #176]
	bl	__ZdlPv
LBB2_112:
	str	x23, [sp, #304]
	ldur	x8, [x23, #-24]
	add	x20, sp, #304
	str	x24, [x20, x8]
	add	x0, x20, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #304
	add	x1, x19, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x20, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp44:
	add	x0, sp, #304
	mov	w1, #256                        ; =0x100
	bl	_gethostname
Ltmp45:
	mov	x19, #-9                        ; =0xfffffffffffffff7
	movk	x19, #32767, lsl #48
; %bb.113:
	cbnz	w0, LBB2_115
; %bb.114:
Ltmp46:
	add	x0, sp, #56
	add	x1, sp, #304
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp47:
LBB2_115:
Ltmp48:
Lloh13:
	adrp	x0, l_.str.6@PAGE
Lloh14:
	add	x0, x0, l_.str.6@PAGEOFF
Lloh15:
	adrp	x1, l_.str.7@PAGE
Lloh16:
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_popen
Ltmp49:
; %bb.116:
	mov	x20, x0
	cbz	x0, LBB2_135
; %bb.117:
	add	x0, sp, #176
	mov	w1, #128                        ; =0x80
	mov	x2, x20
	bl	_fgets
	cbz	x0, LBB2_134
; %bb.118:
	add	x0, sp, #176
	bl	_strlen
	cmp	x0, x19
	b.hi	LBB2_199
; %bb.119:
	mov	x21, x0
	cmp	x0, #23
	b.hs	LBB2_126
; %bb.120:
	strb	w21, [sp, #31]
	add	x22, sp, #8
	cbnz	x21, LBB2_128
; %bb.121:
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #55]
	tbnz	w8, #31, LBB2_129
LBB2_122:
	ldr	x8, [sp, #24]
	str	x8, [sp, #48]
	ldur	q0, [sp, #8]
	str	q0, [sp, #32]
	ldrsb	x8, [sp, #55]
	tbnz	x8, #63, LBB2_130
LBB2_123:
	cbz	w8, LBB2_134
; %bb.124:
	add	x9, sp, #32
	add	x9, x9, x8
	ldurb	w9, [x9, #-1]
	cmp	w9, #10
	b.ne	LBB2_134
; %bb.125:
	sub	x9, x8, #1
	strb	w9, [sp, #55]
	add	x8, sp, #32
	b	LBB2_133
LBB2_126:
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp51:
	mov	x0, x23
	bl	__Znwm
Ltmp52:
; %bb.127:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [sp, #16]
	str	x0, [sp, #8]
LBB2_128:
	add	x1, sp, #176
	mov	x0, x22
	mov	x2, x21
	bl	_memcpy
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB2_122
LBB2_129:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	ldr	x8, [sp, #24]
	str	x8, [sp, #48]
	ldur	q0, [sp, #8]
	str	q0, [sp, #32]
	ldrsb	x8, [sp, #55]
	tbz	x8, #63, LBB2_123
LBB2_130:
	ldr	x9, [sp, #40]
	cbz	x9, LBB2_134
; %bb.131:
	ldr	x8, [sp, #32]
	add	x10, x8, x9
	ldurb	w10, [x10, #-1]
	cmp	w10, #10
	b.ne	LBB2_134
; %bb.132:
	sub	x9, x9, #1
	str	x9, [sp, #40]
LBB2_133:
	strb	wzr, [x8, x9]
LBB2_134:
	mov	x0, x20
	bl	_pclose
LBB2_135:
Lloh17:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh18:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #6                          ; =0x6
	str	x9, [x8, #16]
Ltmp56:
Lloh19:
	adrp	x1, l_.str.8@PAGE
Lloh20:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp57:
; %bb.136:
Ltmp58:
Lloh21:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh22:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh23:
	adrp	x1, l_.str.9@PAGE
Lloh24:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #25                         ; =0x19
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp59:
; %bb.137:
Ltmp60:
Lloh25:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh26:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh27:
	adrp	x1, l_.str.8@PAGE
Lloh28:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp61:
; %bb.138:
Ltmp62:
Lloh29:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh30:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh31:
	adrp	x1, l_.str.10@PAGE
Lloh32:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp63:
; %bb.139:
Ltmp64:
Lloh33:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh34:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh35:
	adrp	x1, l_.str.11@PAGE
Lloh36:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp65:
; %bb.140:
	ldrb	w8, [sp, #79]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #56]
	cmp	w9, #0
	add	x9, sp, #56
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp66:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
; %bb.141:
Ltmp68:
Lloh37:
	adrp	x1, l_.str.12@PAGE
Lloh38:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp69:
; %bb.142:
Ltmp70:
Lloh39:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh40:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh41:
	adrp	x1, l_.str.13@PAGE
Lloh42:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp71:
; %bb.143:
	ldrb	w8, [sp, #55]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #32]
	cmp	w9, #0
	add	x9, sp, #32
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp72:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp73:
; %bb.144:
Ltmp74:
Lloh43:
	adrp	x1, l_.str.12@PAGE
Lloh44:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp75:
; %bb.145:
Ltmp76:
Lloh45:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh46:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh47:
	adrp	x1, l_.str.14@PAGE
Lloh48:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp77:
; %bb.146:
	ldrb	w8, [sp, #167]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #144]
	cmp	w9, #0
	add	x9, sp, #144
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp78:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp79:
; %bb.147:
Ltmp80:
Lloh49:
	adrp	x1, l_.str.12@PAGE
Lloh50:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp81:
; %bb.148:
Ltmp82:
Lloh51:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh52:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh53:
	adrp	x1, l_.str.15@PAGE
Lloh54:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp83:
; %bb.149:
	ldrb	w8, [sp, #135]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #112]
	cmp	w9, #0
	add	x9, sp, #112
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp84:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp85:
; %bb.150:
Ltmp86:
Lloh55:
	adrp	x1, l_.str.12@PAGE
Lloh56:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp87:
; %bb.151:
Ltmp88:
Lloh57:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh58:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh59:
	adrp	x1, l_.str.16@PAGE
Lloh60:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp89:
; %bb.152:
	ldrb	w8, [sp, #103]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #80]
	cmp	w9, #0
	add	x9, sp, #80
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp90:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp91:
; %bb.153:
Ltmp92:
Lloh61:
	adrp	x1, l_.str.12@PAGE
Lloh62:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp93:
; %bb.154:
Ltmp94:
Lloh63:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh64:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh65:
	adrp	x1, l_.str.8@PAGE
Lloh66:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp95:
; %bb.155:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
Ltmp97:
Lloh67:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh68:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh69:
	adrp	x1, l_.str.17@PAGE
Lloh70:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #35                         ; =0x23
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp98:
; %bb.156:
Ltmp99:
Lloh71:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh72:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh73:
	adrp	x1, l_.str.18@PAGE
Lloh74:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp100:
; %bb.157:
Ltmp101:
	sub	x8, x23, x22
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d9, x8
	fdiv	d8, d0, d9
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp102:
; %bb.158:
Ltmp103:
Lloh75:
	adrp	x1, l_.str.19@PAGE
Lloh76:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp104:
; %bb.159:
Ltmp105:
Lloh77:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh78:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh79:
	adrp	x1, l_.str.20@PAGE
Lloh80:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp106:
; %bb.160:
Ltmp107:
	sub	x8, x21, x20
	scvtf	d0, x8
	fdiv	d9, d0, d9
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp108:
; %bb.161:
Ltmp109:
Lloh81:
	adrp	x1, l_.str.19@PAGE
Lloh82:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp110:
; %bb.162:
	fcmp	d9, #0.0
	b.le	LBB2_166
; %bb.163:
Ltmp111:
Lloh83:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh84:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh85:
	adrp	x1, l_.str.21@PAGE
Lloh86:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp112:
; %bb.164:
	fdiv	d0, d8, d9
Ltmp113:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp114:
; %bb.165:
Ltmp115:
Lloh87:
	adrp	x1, l_.str.22@PAGE
Lloh88:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #16                         ; =0x10
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp116:
LBB2_166:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
Ltmp118:
Lloh89:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh90:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh91:
	adrp	x1, l_.str.23@PAGE
Lloh92:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp119:
; %bb.167:
Ltmp120:
Lloh93:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh94:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh95:
	adrp	x1, l_.str.24@PAGE
Lloh96:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp121:
; %bb.168:
Ltmp122:
	sub	x8, x23, x22
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d9, x8
	fdiv	d8, d0, d9
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp123:
; %bb.169:
Ltmp124:
Lloh97:
	adrp	x1, l_.str.25@PAGE
Lloh98:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp125:
; %bb.170:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	scvtf	d0, w8
	mov	x8, #4634204016564240384        ; =0x4050000000000000
	fmov	d1, x8
	fmul	d10, d0, d1
	fdiv	d0, d10, d8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp126:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp127:
; %bb.171:
Ltmp128:
Lloh99:
	adrp	x1, l_.str.26@PAGE
Lloh100:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp129:
; %bb.172:
Ltmp130:
Lloh101:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh102:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh103:
	adrp	x1, l_.str.27@PAGE
Lloh104:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp131:
; %bb.173:
Ltmp132:
	sub	x8, x21, x20
	scvtf	d0, x8
	fdiv	d9, d0, d9
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp133:
; %bb.174:
Ltmp134:
Lloh105:
	adrp	x1, l_.str.25@PAGE
Lloh106:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp135:
; %bb.175:
	fdiv	d0, d10, d9
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp136:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp137:
; %bb.176:
Ltmp138:
Lloh107:
	adrp	x1, l_.str.26@PAGE
Lloh108:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp139:
; %bb.177:
	fcmp	d9, #0.0
	b.le	LBB2_181
; %bb.178:
Ltmp140:
Lloh109:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh110:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh111:
	adrp	x1, l_.str.21@PAGE
Lloh112:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp141:
; %bb.179:
	fdiv	d0, d8, d9
Ltmp142:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp143:
; %bb.180:
Ltmp144:
Lloh113:
	adrp	x1, l_.str.28@PAGE
Lloh114:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp145:
LBB2_181:
	ldrsb	w8, [sp, #55]
	tbnz	w8, #31, LBB2_188
; %bb.182:
	ldrsb	w8, [sp, #79]
	tbnz	w8, #31, LBB2_189
LBB2_183:
	ldrsb	w8, [sp, #103]
	tbnz	w8, #31, LBB2_190
LBB2_184:
	ldrsb	w8, [sp, #135]
	tbnz	w8, #31, LBB2_191
LBB2_185:
	ldrsb	w8, [sp, #167]
	tbnz	w8, #31, LBB2_192
LBB2_186:
	ldur	x8, [x29, #-128]
Lloh115:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh116:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh117:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_193
LBB2_187:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #896
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #128            ; 16-byte Folded Reload
	ret
LBB2_188:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	ldrsb	w8, [sp, #79]
	tbz	w8, #31, LBB2_183
LBB2_189:
	ldr	x0, [sp, #56]
	bl	__ZdlPv
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB2_184
LBB2_190:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
	ldrsb	w8, [sp, #135]
	tbz	w8, #31, LBB2_185
LBB2_191:
	ldr	x0, [sp, #112]
	bl	__ZdlPv
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB2_186
LBB2_192:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	ldur	x8, [x29, #-128]
Lloh118:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh119:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh120:
	ldr	x9, [x9]
	cmp	x9, x8
	b.eq	LBB2_187
LBB2_193:
	bl	___stack_chk_fail
LBB2_194:
Ltmp152:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp153:
	b	LBB2_203
LBB2_195:
Ltmp150:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp151:
	b	LBB2_203
LBB2_196:
Ltmp160:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp161:
	b	LBB2_203
LBB2_197:
Ltmp158:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp159:
	b	LBB2_203
LBB2_198:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB2_199:
Ltmp53:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp54:
	b	LBB2_203
LBB2_200:
Ltmp8:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp9:
	b	LBB2_203
LBB2_201:
Ltmp41:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp42:
	b	LBB2_203
LBB2_202:
Ltmp39:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp40:
LBB2_203:
	brk	#0x1
LBB2_204:
Ltmp43:
	b	LBB2_227
LBB2_205:
Ltmp7:
	b	LBB2_208
LBB2_206:
Ltmp10:
	bl	__Unwind_Resume
LBB2_207:
Ltmp2:
LBB2_208:
	mov	x19, x0
	ldrsb	w8, [sp, #327]
	tbz	w8, #31, LBB2_241
; %bb.209:
	ldr	x0, [sp, #304]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_210:
Ltmp55:
	b	LBB2_223
LBB2_211:
Ltmp50:
	b	LBB2_223
LBB2_212:
Ltmp26:
	b	LBB2_223
LBB2_213:
Ltmp13:
	b	LBB2_223
LBB2_214:
Ltmp157:
	b	LBB2_227
LBB2_215:
Ltmp149:
	b	LBB2_227
LBB2_216:
Ltmp36:
	b	LBB2_227
LBB2_217:
Ltmp33:
	b	LBB2_225
LBB2_218:
Ltmp162:
	b	LBB2_227
LBB2_219:
Ltmp154:
	b	LBB2_227
LBB2_220:
Ltmp117:
	b	LBB2_223
LBB2_221:
Ltmp146:
	b	LBB2_223
LBB2_222:
Ltmp96:
LBB2_223:
	mov	x19, x0
	b	LBB2_231
LBB2_224:
Ltmp20:
LBB2_225:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	b	LBB2_228
LBB2_226:
Ltmp23:
LBB2_227:
	mov	x19, x0
LBB2_228:
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB2_230
; %bb.229:
	ldr	x0, [sp, #176]
	bl	__ZdlPv
LBB2_230:
	add	x0, sp, #304
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
LBB2_231:
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB2_237
; %bb.232:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	ldrsb	w8, [sp, #79]
	tbnz	w8, #31, LBB2_238
LBB2_233:
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB2_239
LBB2_234:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
	ldrsb	w8, [sp, #135]
	tbnz	w8, #31, LBB2_240
LBB2_235:
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB2_241
LBB2_236:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_237:
	ldrsb	w8, [sp, #79]
	tbz	w8, #31, LBB2_233
LBB2_238:
	ldr	x0, [sp, #56]
	bl	__ZdlPv
	ldrsb	w8, [sp, #103]
	tbnz	w8, #31, LBB2_234
LBB2_239:
	ldrsb	w8, [sp, #135]
	tbz	w8, #31, LBB2_235
LBB2_240:
	ldr	x0, [sp, #112]
	bl	__ZdlPv
	ldrsb	w8, [sp, #167]
	tbnz	w8, #31, LBB2_236
LBB2_241:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGot	Lloh5, Lloh6
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh11, Lloh12
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpLdrGot	Lloh21, Lloh22
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpLdrGot	Lloh33, Lloh34
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpLdrGot	Lloh39, Lloh40
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpLdrGot	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpLdrGot	Lloh51, Lloh52
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpLdrGot	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpLdrGot	Lloh63, Lloh64
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpLdrGot	Lloh67, Lloh68
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpLdrGot	Lloh71, Lloh72
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpLdrGot	Lloh77, Lloh78
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpLdrGot	Lloh83, Lloh84
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpLdrGot	Lloh89, Lloh90
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpLdrGot	Lloh93, Lloh94
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpLdrGot	Lloh101, Lloh102
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpLdrGot	Lloh109, Lloh110
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpLdrGotLdr	Lloh115, Lloh116, Lloh117
	.loh AdrpLdrGotLdr	Lloh118, Lloh119, Lloh120
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp10-Lfunc_begin0            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp5-Ltmp4                    ;   Call between Ltmp4 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0             ;     jumps to Ltmp7
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp12-Ltmp11                  ;   Call between Ltmp11 and Ltmp12
	.uleb128 Ltmp13-Lfunc_begin0            ;     jumps to Ltmp13
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp15-Ltmp14                  ;   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp19-Ltmp16                  ;   Call between Ltmp16 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Ltmp148-Ltmp147                ;   Call between Ltmp147 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin0           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Ltmp155-Ltmp148                ;   Call between Ltmp148 and Ltmp155
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp155-Lfunc_begin0           ; >> Call Site 12 <<
	.uleb128 Ltmp156-Ltmp155                ;   Call between Ltmp155 and Ltmp156
	.uleb128 Ltmp157-Lfunc_begin0           ;     jumps to Ltmp157
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp156-Lfunc_begin0           ; >> Call Site 13 <<
	.uleb128 Ltmp24-Ltmp156                 ;   Call between Ltmp156 and Ltmp24
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp36-Lfunc_begin0            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp32-Ltmp29                  ;   Call between Ltmp29 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin0            ;     jumps to Ltmp33
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp35-Ltmp34                  ;   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin0            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp38-Ltmp37                  ;   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp43-Lfunc_begin0            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp44-Ltmp38                  ;   Call between Ltmp38 and Ltmp44
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp47-Ltmp44                  ;   Call between Ltmp44 and Ltmp47
	.uleb128 Ltmp96-Lfunc_begin0            ;     jumps to Ltmp96
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp49-Ltmp48                  ;   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin0            ;     jumps to Ltmp50
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp52-Ltmp51                  ;   Call between Ltmp51 and Ltmp52
	.uleb128 Ltmp55-Lfunc_begin0            ;     jumps to Ltmp55
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp56-Ltmp52                  ;   Call between Ltmp52 and Ltmp56
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp95-Ltmp56                  ;   Call between Ltmp56 and Ltmp95
	.uleb128 Ltmp96-Lfunc_begin0            ;     jumps to Ltmp96
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp97-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp116-Ltmp97                 ;   Call between Ltmp97 and Ltmp116
	.uleb128 Ltmp117-Lfunc_begin0           ;     jumps to Ltmp117
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin0           ; >> Call Site 26 <<
	.uleb128 Ltmp145-Ltmp118                ;   Call between Ltmp118 and Ltmp145
	.uleb128 Ltmp146-Lfunc_begin0           ;     jumps to Ltmp146
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin0           ; >> Call Site 27 <<
	.uleb128 Ltmp152-Ltmp145                ;   Call between Ltmp145 and Ltmp152
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp152-Lfunc_begin0           ; >> Call Site 28 <<
	.uleb128 Ltmp151-Ltmp152                ;   Call between Ltmp152 and Ltmp151
	.uleb128 Ltmp154-Lfunc_begin0           ;     jumps to Ltmp154
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin0           ; >> Call Site 29 <<
	.uleb128 Ltmp159-Ltmp160                ;   Call between Ltmp160 and Ltmp159
	.uleb128 Ltmp162-Lfunc_begin0           ;     jumps to Ltmp162
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp53-Ltmp159                 ;   Call between Ltmp159 and Ltmp53
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin0            ; >> Call Site 31 <<
	.uleb128 Ltmp54-Ltmp53                  ;   Call between Ltmp53 and Ltmp54
	.uleb128 Ltmp55-Lfunc_begin0            ;     jumps to Ltmp55
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 32 <<
	.uleb128 Ltmp9-Ltmp8                    ;   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin0            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin0            ; >> Call Site 33 <<
	.uleb128 Ltmp40-Ltmp41                  ;   Call between Ltmp41 and Ltmp40
	.uleb128 Ltmp43-Lfunc_begin0            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 34 <<
	.uleb128 Lfunc_end0-Ltmp40              ;   Call between Ltmp40 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	str	xzr, [x0, #472]
Lloh121:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh122:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh123:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh124:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp163:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp164:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp166:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp167:
; %bb.2:
Ltmp169:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp170:
; %bb.3:
	cbnz	x0, LBB3_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp171:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp172:
LBB3_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB3_6:
Ltmp168:
	mov	x20, x0
	b	LBB3_9
LBB3_7:
Ltmp165:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB3_8:
Ltmp173:
	mov	x20, x0
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
LBB3_9:
	add	x1, x23, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh123, Lloh124
	.loh AdrpLdrGot	Lloh121, Lloh122
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
	.uleb128 Ltmp163-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp164-Ltmp163                ;   Call between Ltmp163 and Ltmp164
	.uleb128 Ltmp165-Lfunc_begin1           ;     jumps to Ltmp165
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp166-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp167-Ltmp166                ;   Call between Ltmp166 and Ltmp167
	.uleb128 Ltmp168-Lfunc_begin1           ;     jumps to Ltmp168
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp172-Ltmp169                ;   Call between Ltmp169 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin1           ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp172             ;   Call between Ltmp172 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
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
	mov	x19, x0
Lloh125:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh126:
	ldr	x20, [x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	add	x0, x0, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh125, Lloh126
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
Lloh127:
	adrp	x0, l_.str.29@PAGE
Lloh128:
	add	x0, x0, l_.str.29@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh127, Lloh128
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
Ltmp174:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp175:
; %bb.1:
Lloh129:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh130:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh131:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh132:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB6_2:
Ltmp176:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh131, Lloh132
	.loh AdrpLdrGot	Lloh129, Lloh130
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp174-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp174
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin2           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp175-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp175             ;   Call between Ltmp175 and Lfunc_end2
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
Lloh133:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh134:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh133, Lloh134
	.cfi_endproc
                                        ; -- End function
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
	.private_extern	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #80
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
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	add	x0, sp, #15
	mov	x1, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
	ldrb	w8, [sp, #15]
	cmp	w8, #1
	b.ne	LBB9_17
; %bb.1:
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB9_3
; %bb.2:
	strb	wzr, [x21]
	strb	wzr, [x21, #23]
	b	LBB9_4
LBB9_3:
	ldr	x8, [x21]
	strb	wzr, [x8]
	str	xzr, [x21, #8]
LBB9_4:
	mov	x22, #0                         ; =0x0
	add	x23, x19, #40
	mov	x24, #-9                        ; =0xfffffffffffffff7
	movk	x24, #32767, lsl #48
LBB9_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	ldr	x0, [x23, x8]
	ldp	x8, x9, [x0, #24]
	cmp	x8, x9
	b.eq	LBB9_7
; %bb.6:                                ;   in Loop: Header=BB9_5 Depth=1
	add	x9, x8, #1
	str	x9, [x0, #24]
	ldrb	w0, [x8]
	b	LBB9_9
LBB9_7:                                 ;   in Loop: Header=BB9_5 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
Ltmp177:
	blr	x8
Ltmp178:
; %bb.8:                                ;   in Loop: Header=BB9_5 Depth=1
	cmn	w0, #1
	b.eq	LBB9_15
LBB9_9:                                 ;   in Loop: Header=BB9_5 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w20, uxtb
	b.eq	LBB9_14
; %bb.10:                               ;   in Loop: Header=BB9_5 Depth=1
Ltmp180:
	sxtb	w1, w0
	mov	x0, x21
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp181:
; %bb.11:                               ;   in Loop: Header=BB9_5 Depth=1
	ldrsb	w8, [x21, #23]
	sub	x22, x22, #1
	tbz	w8, #31, LBB9_5
; %bb.12:                               ;   in Loop: Header=BB9_5 Depth=1
	ldr	x8, [x21, #8]
	cmp	x8, x24
	b.ne	LBB9_5
; %bb.13:
	mov	w8, #4                          ; =0x4
	b	LBB9_16
LBB9_14:
	mov	w8, #0                          ; =0x0
	b	LBB9_16
LBB9_15:
	cmp	x22, #0
	mov	w8, #2                          ; =0x2
	mov	w9, #6                          ; =0x6
	csel	w8, w9, w8, eq
LBB9_16:
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x0, x19, x9
	ldr	w9, [x0, #32]
	orr	w1, w9, w8
	bl	__ZNSt3__18ios_base5clearEj
LBB9_17:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB9_18:
Ltmp179:
	b	LBB9_20
LBB9_19:
Ltmp182:
LBB9_20:
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x9, [x8, #-24]
	add	x9, x19, x9
	ldr	w10, [x9, #32]
	orr	w10, w10, #0x1
	str	w10, [x9, #32]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldrb	w8, [x8, #36]
	tbnz	w8, #0, LBB9_22
; %bb.21:
	bl	___cxa_end_catch
	mov	w8, #1                          ; =0x1
	b	LBB9_16
LBB9_22:
Ltmp183:
	bl	___cxa_rethrow
Ltmp184:
; %bb.23:
	brk	#0x1
LBB9_24:
Ltmp185:
	mov	x19, x0
Ltmp186:
	bl	___cxa_end_catch
Ltmp187:
; %bb.25:
	mov	x0, x19
	bl	__Unwind_Resume
LBB9_26:
Ltmp188:
	bl	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp177-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp177
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp178-Ltmp177                ;   Call between Ltmp177 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin3           ;     jumps to Ltmp179
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp180-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp181-Ltmp180                ;   Call between Ltmp180 and Ltmp181
	.uleb128 Ltmp182-Lfunc_begin3           ;     jumps to Ltmp182
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp181-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp183-Ltmp181                ;   Call between Ltmp181 and Ltmp183
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp184-Ltmp183                ;   Call between Ltmp183 and Ltmp184
	.uleb128 Ltmp185-Lfunc_begin3           ;     jumps to Ltmp185
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp186-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp187-Ltmp186                ;   Call between Ltmp186 and Ltmp187
	.uleb128 Ltmp188-Lfunc_begin3           ;     jumps to Ltmp188
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp187-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Lfunc_end3-Ltmp187             ;   Call between Ltmp187 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
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
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh135:
	adrp	x0, l_.str.29@PAGE
Lloh136:
	add	x0, x0, l_.str.29@PAGEOFF
	bl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.loh AdrpAdd	Lloh135, Lloh136
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc ; -- Begin function _ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.globl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.p2align	2
__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc: ; @_ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
Ltmp189:
	mov	x1, x20
	bl	__ZNSt12out_of_rangeC1B8ne200100EPKc
Ltmp190:
; %bb.1:
Lloh137:
	adrp	x1, __ZTISt12out_of_range@GOTPAGE
Lloh138:
	ldr	x1, [x1, __ZTISt12out_of_range@GOTPAGEOFF]
Lloh139:
	adrp	x2, __ZNSt12out_of_rangeD1Ev@GOTPAGE
Lloh140:
	ldr	x2, [x2, __ZNSt12out_of_rangeD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB11_2:
Ltmp191:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh139, Lloh140
	.loh AdrpLdrGot	Lloh137, Lloh138
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp189-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp189
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp190-Ltmp189                ;   Call between Ltmp189 and Ltmp190
	.uleb128 Ltmp191-Lfunc_begin4           ;     jumps to Ltmp191
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp190-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp190             ;   Call between Ltmp190 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12out_of_rangeC1B8ne200100EPKc ; -- Begin function _ZNSt12out_of_rangeC1B8ne200100EPKc
	.globl	__ZNSt12out_of_rangeC1B8ne200100EPKc
	.weak_def_can_be_hidden	__ZNSt12out_of_rangeC1B8ne200100EPKc
	.p2align	2
__ZNSt12out_of_rangeC1B8ne200100EPKc:   ; @_ZNSt12out_of_rangeC1B8ne200100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh141:
	adrp	x8, __ZTVSt12out_of_range@GOTPAGE
Lloh142:
	ldr	x8, [x8, __ZTVSt12out_of_range@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh141, Lloh142
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
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
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp192:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp193:
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
Ltmp195:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp196:
; %bb.4:
Ltmp197:
Lloh143:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh144:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp198:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp199:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp200:
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
Ltmp202:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp203:
; %bb.8:
	cbnz	x0, LBB13_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp205:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp206:
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
Ltmp207:
	b	LBB13_15
LBB13_13:
Ltmp201:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB13_16
LBB13_14:
Ltmp204:
LBB13_15:
	mov	x20, x0
LBB13_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB13_18
LBB13_17:
Ltmp194:
	mov	x20, x0
LBB13_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp208:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp209:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB13_11
LBB13_20:
Ltmp210:
	mov	x19, x0
Ltmp211:
	bl	___cxa_end_catch
Ltmp212:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB13_22:
Ltmp213:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh143, Lloh144
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp192-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp193-Ltmp192                ;   Call between Ltmp192 and Ltmp193
	.uleb128 Ltmp194-Lfunc_begin5           ;     jumps to Ltmp194
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp195-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp196-Ltmp195                ;   Call between Ltmp195 and Ltmp196
	.uleb128 Ltmp204-Lfunc_begin5           ;     jumps to Ltmp204
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp197-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp200-Ltmp197                ;   Call between Ltmp197 and Ltmp200
	.uleb128 Ltmp201-Lfunc_begin5           ;     jumps to Ltmp201
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp202-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp203-Ltmp202                ;   Call between Ltmp202 and Ltmp203
	.uleb128 Ltmp204-Lfunc_begin5           ;     jumps to Ltmp204
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp205-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp206-Ltmp205                ;   Call between Ltmp205 and Ltmp206
	.uleb128 Ltmp207-Lfunc_begin5           ;     jumps to Ltmp207
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp206-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp208-Ltmp206                ;   Call between Ltmp206 and Ltmp208
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp208-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp209-Ltmp208                ;   Call between Ltmp208 and Ltmp209
	.uleb128 Ltmp210-Lfunc_begin5           ;     jumps to Ltmp210
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp209-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp211-Ltmp209                ;   Call between Ltmp209 and Ltmp211
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp211-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Ltmp212-Ltmp211                ;   Call between Ltmp211 and Ltmp212
	.uleb128 Ltmp213-Lfunc_begin5           ;     jumps to Ltmp213
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp212-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Lfunc_end5-Ltmp212             ;   Call between Ltmp212 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
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
	.private_extern	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
Ltmp214:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp215:
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
Ltmp216:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB14_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB14_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table14:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp214-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp214
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp214-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp215-Ltmp214                ;   Call between Ltmp214 and Ltmp215
	.uleb128 Ltmp216-Lfunc_begin6           ;     jumps to Ltmp216
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp215-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp215             ;   Call between Ltmp215 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"/proc/cpuinfo"

l_.str.1:                               ; @.str.1
	.asciz	"model name"

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

l_.str.29:                              ; @.str.29
	.asciz	"basic_string"

.subsections_via_symbols
