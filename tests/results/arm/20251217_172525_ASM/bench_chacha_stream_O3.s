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
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI2_0:
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
lCPI2_1:
	.long	6                               ; 0x6
	.long	7                               ; 0x7
	.long	8                               ; 0x8
	.long	9                               ; 0x9
lCPI2_2:
	.long	10                              ; 0xa
	.long	11                              ; 0xb
	.long	12                              ; 0xc
	.long	13                              ; 0xd
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
lCPI2_3:
	.long	14                              ; 0xe
	.long	15                              ; 0xf
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	sub	sp, sp, #1024
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
	stur	x8, [x29, #-136]
	mov	x25, #-9                        ; =0xfffffffffffffff7
	movk	x25, #32767, lsl #48
	mov	w20, #47806                     ; =0xbabe
	movk	w20, #51966, lsl #16
	cmp	w0, #2
	b.lt	LBB2_4
; %bb.1:
	mov	x21, x1
	mov	x22, x0
	ldr	x23, [x1, #8]
	mov	x0, x23
	bl	_strlen
	cmp	x0, x25
	b.hi	LBB2_232
; %bb.2:
	mov	x19, x0
	cmp	x0, #23
	b.hs	LBB2_5
; %bb.3:
	strb	w19, [sp, #447]
	add	x24, sp, #424
	cbnz	x19, LBB2_6
	b	LBB2_7
LBB2_4:
	mov	w19, #16960                     ; =0x4240
	movk	w19, #15, lsl #16
	b	LBB2_20
LBB2_5:
	orr	x8, x19, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x25, x9, x8, eq
	mov	x0, x25
	bl	__Znwm
	mov	x24, x0
	orr	x8, x25, #0x8000000000000000
	mov	x25, #-9                        ; =0xfffffffffffffff7
	movk	x25, #32767, lsl #48
	stp	x19, x8, [sp, #432]
	str	x0, [sp, #424]
LBB2_6:
	mov	x0, x24
	mov	x1, x23
	mov	x2, x19
	bl	_memmove
LBB2_7:
	strb	wzr, [x24, x19]
Ltmp0:
	add	x0, sp, #424
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__16stoullERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp1:
; %bb.8:
	mov	x19, x0
	ldrsb	w8, [sp, #447]
	tbnz	w8, #31, LBB2_10
; %bb.9:
	cmp	w22, #2
	b.ne	LBB2_11
	b	LBB2_20
LBB2_10:
	ldr	x0, [sp, #424]
	bl	__ZdlPv
	cmp	w22, #2
	b.eq	LBB2_20
LBB2_11:
	ldr	x21, [x21, #16]
	mov	x0, x21
	bl	_strlen
	cmp	x0, x25
	b.hi	LBB2_234
; %bb.12:
	mov	x20, x0
	cmp	x0, #23
	b.hs	LBB2_14
; %bb.13:
	strb	w20, [sp, #447]
	add	x22, sp, #424
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
	stp	x20, x8, [sp, #432]
	str	x0, [sp, #424]
LBB2_16:
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
LBB2_17:
	strb	wzr, [x22, x20]
Ltmp5:
	add	x0, sp, #424
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__15stoulERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp6:
; %bb.18:
	mov	x20, x0
	ldrsb	w8, [sp, #447]
	tbz	w8, #31, LBB2_20
; %bb.19:
	ldr	x0, [sp, #424]
	bl	__ZdlPv
LBB2_20:
	str	x20, [sp, #64]                  ; 8-byte Folded Spill
	str	x19, [sp, #8]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [sp, #192]
	str	xzr, [sp, #208]
	stp	xzr, xzr, [sp, #160]
	str	xzr, [sp, #176]
	stp	xzr, xzr, [sp, #128]
	str	xzr, [sp, #144]
	stp	xzr, xzr, [sp, #104]
	str	xzr, [sp, #120]
	stp	xzr, xzr, [sp, #80]
	str	xzr, [sp, #96]
Ltmp11:
Lloh3:
	adrp	x1, l_.str@PAGE
Lloh4:
	add	x1, x1, l_.str@PAGEOFF
	add	x0, sp, #424
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp12:
; %bb.21:
	stp	xzr, xzr, [sp, #296]
	mov	w19, #19744                     ; =0x4d20
	movk	w19, #31304, lsl #16
	str	xzr, [sp, #312]
	mov	x26, #28525                     ; =0x6f6d
	movk	x26, #25956, lsl #16
	movk	x26, #8300, lsl #32
	movk	x26, #24942, lsl #48
	mov	w27, #25965                     ; =0x656d
	b	LBB2_24
LBB2_22:                                ;   in Loop: Header=BB2_24 Depth=1
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #183]
	tbnz	w8, #31, LBB2_76
LBB2_23:                                ;   in Loop: Header=BB2_24 Depth=1
	ldr	q0, [sp, #224]
	str	q0, [sp, #160]
	ldr	x8, [sp, #240]
	str	x8, [sp, #176]
LBB2_24:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_31 Depth 2
                                        ;     Child Loop BB2_37 Depth 2
                                        ;     Child Loop BB2_52 Depth 2
                                        ;     Child Loop BB2_58 Depth 2
	ldr	x8, [sp, #424]
	ldur	x9, [x8, #-24]
Ltmp14:
	add	x8, sp, #224
	add	x10, sp, #424
	add	x0, x10, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp15:
; %bb.25:                               ;   in Loop: Header=BB2_24 Depth=1
Ltmp16:
	add	x0, sp, #224
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
	mov	x22, x0
	add	x0, sp, #224
	bl	__ZNSt3__16localeD1Ev
Ltmp21:
	add	x0, sp, #424
	add	x1, sp, #296
	mov	x2, x22
	bl	__ZNSt3__17getlineB8ne200100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp22:
; %bb.28:                               ;   in Loop: Header=BB2_24 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w23, [sp, #319]
	sxtb	w21, w23
	ldrb	w8, [x8, #32]
	mov	w9, #5                          ; =0x5
	tst	w8, w9
	b.ne	LBB2_77
; %bb.29:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	w21, #0
	ldp	x25, x24, [sp, #296]
	add	x8, sp, #296
	csel	x22, x25, x8, lt
	csel	x8, x24, x23, lt
	cmp	x8, #10
	b.lt	LBB2_50
; %bb.30:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x20, x22, x8
	mov	x28, x8
	mov	x0, x22
LBB2_31:                                ;   Parent Loop BB2_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x2, x8, #9
	mov	w1, #109                        ; =0x6d
	bl	_memchr
	cbz	x0, LBB2_50
; %bb.32:                               ;   in Loop: Header=BB2_31 Depth=2
	ldr	x8, [x0]
	ldrh	w9, [x0, #8]
	cmp	x8, x26
	ccmp	w9, w27, #0, eq
	b.eq	LBB2_34
; %bb.33:                               ;   in Loop: Header=BB2_31 Depth=2
	add	x0, x0, #1
	sub	x8, x20, x0
	cmp	x8, #10
	b.ge	LBB2_31
	b	LBB2_50
LBB2_34:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x0, x20
	b.eq	LBB2_50
; %bb.35:                               ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x22
	cmn	x8, #1
	b.eq	LBB2_50
; %bb.36:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x2, x28
	mov	x0, x22
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
	sub	x2, x20, x0
	cmp	x2, #0
	b.gt	LBB2_37
LBB2_40:                                ;   in Loop: Header=BB2_24 Depth=1
	mov	x0, x20
LBB2_41:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x22
	add	x8, x8, #2
	cmp	x0, x20
	csinc	x20, x8, xzr, ne
	tbnz	w21, #31, LBB2_44
; %bb.42:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x20, x23
	b.hi	LBB2_228
; %bb.43:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x25, sp, #296
	mov	x24, x23
	b	LBB2_45
LBB2_44:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x24, x20
	b.lo	LBB2_228
LBB2_45:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x22, x24, x20
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x22, x8
	b.hi	LBB2_229
; %bb.46:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x22, #23
	b.hs	LBB2_65
; %bb.47:                               ;   in Loop: Header=BB2_24 Depth=1
	strb	w22, [sp, #247]
	add	x23, sp, #224
	cmp	x24, x20
	b.ne	LBB2_67
; %bb.48:                               ;   in Loop: Header=BB2_24 Depth=1
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #215]
	tbnz	w8, #31, LBB2_68
LBB2_49:                                ;   in Loop: Header=BB2_24 Depth=1
	ldr	q0, [sp, #224]
	str	q0, [sp, #192]
	ldr	x8, [sp, #240]
	str	x8, [sp, #208]
	ldrb	w23, [sp, #319]
	ldp	x25, x24, [sp, #296]
	mov	x21, x23
LBB2_50:                                ;   in Loop: Header=BB2_24 Depth=1
	sxtb	w8, w21
	cmp	w8, #0
	add	x8, sp, #296
	csel	x28, x25, x8, lt
	csel	x22, x24, x23, lt
	cmp	x22, #7
	b.lt	LBB2_24
; %bb.51:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x20, x28, x22
	mov	x8, x22
	mov	x0, x28
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
	sub	x8, x20, x0
	cmp	x8, #7
	b.ge	LBB2_52
	b	LBB2_24
LBB2_55:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x0, x20
	b.eq	LBB2_24
; %bb.56:                               ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x28
	cmn	x8, #1
	b.eq	LBB2_24
; %bb.57:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x0, x28
LBB2_58:                                ;   Parent Loop BB2_24 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	w1, #58                         ; =0x3a
	mov	x2, x22
	bl	_memchr
	cbz	x0, LBB2_61
; %bb.59:                               ;   in Loop: Header=BB2_58 Depth=2
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB2_62
; %bb.60:                               ;   in Loop: Header=BB2_58 Depth=2
	add	x0, x0, #1
	sub	x22, x20, x0
	cmp	x22, #0
	b.gt	LBB2_58
LBB2_61:                                ;   in Loop: Header=BB2_24 Depth=1
	mov	x0, x20
LBB2_62:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x8, x0, x28
	add	x8, x8, #2
	cmp	x0, x20
	csinc	x20, x8, xzr, ne
	tbnz	w21, #7, LBB2_69
; %bb.63:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x20, x23
	b.hi	LBB2_230
; %bb.64:                               ;   in Loop: Header=BB2_24 Depth=1
	add	x25, sp, #296
	mov	x24, x23
	b	LBB2_70
LBB2_65:                                ;   in Loop: Header=BB2_24 Depth=1
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp203:
	mov	x0, x24
	bl	__Znwm
Ltmp204:
; %bb.66:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x22, x8, [sp, #232]
	str	x0, [sp, #224]
LBB2_67:                                ;   in Loop: Header=BB2_24 Depth=1
	add	x1, x25, x20
	mov	x0, x23
	mov	x2, x22
	bl	_memmove
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB2_49
LBB2_68:                                ;   in Loop: Header=BB2_24 Depth=1
	ldr	x0, [sp, #192]
	bl	__ZdlPv
	b	LBB2_49
LBB2_69:                                ;   in Loop: Header=BB2_24 Depth=1
	cmp	x24, x20
	b.lo	LBB2_230
LBB2_70:                                ;   in Loop: Header=BB2_24 Depth=1
	sub	x22, x24, x20
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x22, x8
	b.hi	LBB2_231
; %bb.71:                               ;   in Loop: Header=BB2_24 Depth=1
	cmp	x22, #23
	b.hs	LBB2_73
; %bb.72:                               ;   in Loop: Header=BB2_24 Depth=1
	strb	w22, [sp, #247]
	add	x23, sp, #224
	cmp	x24, x20
	b.ne	LBB2_75
	b	LBB2_22
LBB2_73:                                ;   in Loop: Header=BB2_24 Depth=1
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp211:
	mov	x0, x24
	bl	__Znwm
Ltmp212:
; %bb.74:                               ;   in Loop: Header=BB2_24 Depth=1
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x22, x8, [sp, #232]
	str	x0, [sp, #224]
LBB2_75:                                ;   in Loop: Header=BB2_24 Depth=1
	add	x1, x25, x20
	mov	x0, x23
	mov	x2, x22
	bl	_memmove
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB2_23
LBB2_76:                                ;   in Loop: Header=BB2_24 Depth=1
	ldr	x0, [sp, #160]
	bl	__ZdlPv
	b	LBB2_23
LBB2_77:
	tbz	w21, #31, LBB2_79
; %bb.78:
	ldr	x0, [sp, #296]
	bl	__ZdlPv
LBB2_79:
Lloh7:
	adrp	x19, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh8:
	ldr	x19, [x19, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x20, [x19]
	str	x20, [sp, #424]
	ldr	x24, [x19, #24]
	ldur	x8, [x20, #-24]
	add	x21, sp, #424
	str	x24, [x21, x8]
	add	x0, x21, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #424
	add	x1, x19, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x21, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp24:
Lloh9:
	adrp	x1, l_.str.4@PAGE
Lloh10:
	add	x1, x1, l_.str.4@PAGEOFF
	add	x21, sp, #424
	add	x0, sp, #424
	mov	w2, #8                          ; =0x8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp25:
; %bb.80:
	stp	xzr, xzr, [sp, #296]
	str	xzr, [sp, #312]
	ldr	x8, [sp, #424]
	ldur	x9, [x8, #-24]
Ltmp27:
	add	x8, sp, #224
	add	x0, x21, x9
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp28:
; %bb.81:
Ltmp29:
Lloh11:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh12:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #224
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
	mov	x21, x0
	add	x0, sp, #224
	bl	__ZNSt3__16localeD1Ev
Ltmp34:
	add	x0, sp, #424
	add	x1, sp, #296
	mov	x2, x21
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
	ldrsb	x22, [sp, #319]
	add	x8, sp, #296
	ldp	x25, x23, [sp, #296]
	cmp	x22, #0
	csel	x26, x25, x8, lt
	cmp	w22, #0
	csel	x21, x23, x22, lt
	cmp	x21, #8
	b.lt	LBB2_110
; %bb.86:
	add	x27, x26, x21
	mov	x28, #25933                     ; =0x654d
	movk	x28, #21613, lsl #16
	movk	x28, #29807, lsl #32
	movk	x28, #27745, lsl #48
	mov	x8, x21
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
LBB2_93:                                ; =>This Inner Loop Header: Depth=1
	mov	w1, #58                         ; =0x3a
	mov	x2, x21
	bl	_memchr
	cbz	x0, LBB2_96
; %bb.94:                               ;   in Loop: Header=BB2_93 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #58
	b.eq	LBB2_97
; %bb.95:                               ;   in Loop: Header=BB2_93 Depth=1
	add	x0, x0, #1
	sub	x21, x27, x0
	cmp	x21, #0
	b.gt	LBB2_93
LBB2_96:
	mov	x0, x27
LBB2_97:
	sub	x8, x0, x26
	add	x8, x8, #2
	cmp	x0, x27
	csinc	x26, x8, xzr, ne
	tbnz	w22, #31, LBB2_100
; %bb.98:
	cmp	x26, x22
	b.hi	LBB2_235
; %bb.99:
	add	x25, sp, #296
	mov	x23, x22
	b	LBB2_101
LBB2_100:
	cmp	x23, x26
	b.lo	LBB2_235
LBB2_101:
	sub	x21, x23, x26
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x21, x8
	b.hi	LBB2_236
; %bb.102:
	cmp	x21, #23
	b.hs	LBB2_104
; %bb.103:
	strb	w21, [sp, #247]
	add	x22, sp, #224
	cmp	x23, x26
	b.ne	LBB2_106
	b	LBB2_107
LBB2_104:
	orr	x8, x21, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x23, x9, x8, eq
Ltmp37:
	mov	x0, x23
	bl	__Znwm
Ltmp38:
; %bb.105:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [sp, #232]
	str	x0, [sp, #224]
LBB2_106:
	add	x1, x25, x26
	mov	x0, x22
	mov	x2, x21
	bl	_memmove
LBB2_107:
	strb	wzr, [x22, x21]
	ldrsb	w8, [sp, #151]
	tbz	w8, #31, LBB2_109
; %bb.108:
	ldr	x0, [sp, #128]
	bl	__ZdlPv
LBB2_109:
	ldr	q0, [sp, #224]
	str	q0, [sp, #128]
	ldr	x8, [sp, #240]
	str	x8, [sp, #144]
LBB2_110:
	ldrsb	w8, [sp, #319]
	tbz	w8, #31, LBB2_112
; %bb.111:
	ldr	x0, [sp, #296]
	bl	__ZdlPv
LBB2_112:
	str	x20, [sp, #424]
	ldur	x8, [x20, #-24]
	add	x20, sp, #424
	str	x24, [x20, x8]
	add	x0, x20, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x0, sp, #424
	add	x1, x19, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x20, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp44:
	add	x0, sp, #424
	mov	w1, #256                        ; =0x100
	bl	_gethostname
Ltmp45:
	ldr	x25, [sp, #8]                   ; 8-byte Folded Reload
; %bb.113:
	cbnz	w0, LBB2_115
; %bb.114:
Ltmp46:
	add	x0, sp, #104
	add	x1, sp, #424
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
Ltmp47:
LBB2_115:
Ltmp49:
Lloh13:
	adrp	x0, l_.str.6@PAGE
Lloh14:
	add	x0, x0, l_.str.6@PAGEOFF
Lloh15:
	adrp	x1, l_.str.7@PAGE
Lloh16:
	add	x1, x1, l_.str.7@PAGEOFF
	bl	_popen
Ltmp50:
	ldr	x19, [sp, #64]                  ; 8-byte Folded Reload
; %bb.116:
	mov	x21, x0
	cbz	x0, LBB2_135
; %bb.117:
	add	x0, sp, #296
	mov	w1, #128                        ; =0x80
	mov	x2, x21
	bl	_fgets
	cbz	x0, LBB2_134
; %bb.118:
	add	x0, sp, #296
	bl	_strlen
	mov	x8, #-9                         ; =0xfffffffffffffff7
	movk	x8, #32767, lsl #48
	cmp	x0, x8
	b.hi	LBB2_233
; %bb.119:
	mov	x22, x0
	cmp	x0, #23
	b.hs	LBB2_126
; %bb.120:
	strb	w22, [sp, #247]
	add	x23, sp, #224
	cbnz	x22, LBB2_128
; %bb.121:
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #103]
	tbnz	w8, #31, LBB2_129
LBB2_122:
	ldr	x8, [sp, #240]
	str	x8, [sp, #96]
	ldr	q0, [sp, #224]
	str	q0, [sp, #80]
	ldrsb	x8, [sp, #103]
	tbnz	x8, #63, LBB2_130
LBB2_123:
	cbz	w8, LBB2_134
; %bb.124:
	add	x9, sp, #80
	add	x9, x9, x8
	ldurb	w9, [x9, #-1]
	cmp	w9, #10
	b.ne	LBB2_134
; %bb.125:
	sub	x9, x8, #1
	strb	w9, [sp, #103]
	add	x8, sp, #80
	b	LBB2_133
LBB2_126:
	orr	x8, x22, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x24, x9, x8, eq
Ltmp52:
	mov	x0, x24
	bl	__Znwm
Ltmp53:
; %bb.127:
	mov	x23, x0
	orr	x8, x24, #0x8000000000000000
	stp	x22, x8, [sp, #232]
	str	x0, [sp, #224]
LBB2_128:
	add	x1, sp, #296
	mov	x0, x23
	mov	x2, x22
	bl	_memcpy
	strb	wzr, [x23, x22]
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB2_122
LBB2_129:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
	ldr	x8, [sp, #240]
	str	x8, [sp, #96]
	ldr	q0, [sp, #224]
	str	q0, [sp, #80]
	ldrsb	x8, [sp, #103]
	tbz	x8, #63, LBB2_123
LBB2_130:
	ldr	x9, [sp, #88]
	cbz	x9, LBB2_134
; %bb.131:
	ldr	x8, [sp, #80]
	add	x10, x8, x9
	ldurb	w10, [x10, #-1]
	cmp	w10, #10
	b.ne	LBB2_134
; %bb.132:
	sub	x9, x9, #1
	str	x9, [sp, #88]
LBB2_133:
	strb	wzr, [x8, x9]
LBB2_134:
	mov	x0, x21
	bl	_pclose
LBB2_135:
	str	wzr, [sp, #296]
	str	w19, [sp, #300]
	dup.4s	v0, w19
Lloh17:
	adrp	x8, lCPI2_0@PAGE
Lloh18:
	ldr	q1, [x8, lCPI2_0@PAGEOFF]
	mul.4s	v1, v0, v1
	add	x9, sp, #296
	stur	q1, [x9, #8]
Lloh19:
	adrp	x8, lCPI2_1@PAGE
Lloh20:
	ldr	q1, [x8, lCPI2_1@PAGEOFF]
	mul.4s	v1, v0, v1
	stur	q1, [x9, #24]
Lloh21:
	adrp	x8, lCPI2_2@PAGE
Lloh22:
	ldr	q1, [x8, lCPI2_2@PAGEOFF]
	mul.4s	v1, v0, v1
	stur	q1, [x9, #40]
Lloh23:
	adrp	x8, lCPI2_3@PAGE
Lloh24:
	ldr	d1, [x8, lCPI2_3@PAGEOFF]
	mul.2s	v0, v0, v1
	str	d0, [sp, #352]
Ltmp57:
	mov	w0, #64                         ; =0x40
	bl	__Znwm
Ltmp58:
; %bb.136:
	mov	x20, x0
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #32]
Lloh25:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh26:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	stp	q0, q0, [x20]
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
Ltmp60:
Lloh27:
	adrp	x1, l_.str.8@PAGE
Lloh28:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp61:
; %bb.137:
Ltmp62:
Lloh29:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh30:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh31:
	adrp	x1, l_.str.9@PAGE
Lloh32:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #26                         ; =0x1a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp63:
; %bb.138:
Ltmp64:
Lloh33:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh34:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh35:
	adrp	x1, l_.str.8@PAGE
Lloh36:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #41                         ; =0x29
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp65:
; %bb.139:
Ltmp66:
Lloh37:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh38:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh39:
	adrp	x1, l_.str.10@PAGE
Lloh40:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #20                         ; =0x14
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp67:
; %bb.140:
Ltmp68:
Lloh41:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh42:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh43:
	adrp	x1, l_.str.11@PAGE
Lloh44:
	add	x1, x1, l_.str.11@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp69:
; %bb.141:
	ldrb	w8, [sp, #127]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #104]
	cmp	w9, #0
	add	x9, sp, #104
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp70:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp71:
; %bb.142:
Ltmp72:
Lloh45:
	adrp	x1, l_.str.12@PAGE
Lloh46:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp73:
; %bb.143:
Ltmp74:
Lloh47:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh48:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh49:
	adrp	x1, l_.str.13@PAGE
Lloh50:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #6                          ; =0x6
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp75:
; %bb.144:
	ldrb	w8, [sp, #103]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #80]
	cmp	w9, #0
	add	x9, sp, #80
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp76:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp77:
; %bb.145:
Ltmp78:
Lloh51:
	adrp	x1, l_.str.12@PAGE
Lloh52:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp79:
; %bb.146:
Ltmp80:
Lloh53:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh54:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh55:
	adrp	x1, l_.str.14@PAGE
Lloh56:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp81:
; %bb.147:
	ldrb	w8, [sp, #215]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #192]
	cmp	w9, #0
	add	x9, sp, #192
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp82:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp83:
; %bb.148:
Ltmp84:
Lloh57:
	adrp	x1, l_.str.12@PAGE
Lloh58:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp85:
; %bb.149:
Ltmp86:
Lloh59:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh60:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh61:
	adrp	x1, l_.str.15@PAGE
Lloh62:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp87:
; %bb.150:
	ldrb	w8, [sp, #183]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #160]
	cmp	w9, #0
	add	x9, sp, #160
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp88:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp89:
; %bb.151:
Ltmp90:
Lloh63:
	adrp	x1, l_.str.12@PAGE
Lloh64:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp91:
; %bb.152:
Ltmp92:
Lloh65:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh66:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh67:
	adrp	x1, l_.str.16@PAGE
Lloh68:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp93:
; %bb.153:
	ldrb	w8, [sp, #151]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #128]
	cmp	w9, #0
	add	x9, sp, #128
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp94:
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp95:
; %bb.154:
Ltmp96:
Lloh69:
	adrp	x1, l_.str.12@PAGE
Lloh70:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp97:
; %bb.155:
Ltmp98:
Lloh71:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh72:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh73:
	adrp	x1, l_.str.17@PAGE
Lloh74:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #42                         ; =0x2a
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp99:
; %bb.156:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	cbz	x25, LBB2_160
; %bb.157:
	ldp	q2, q3, [x20]
	mov	x19, x25
	ldp	q0, q1, [x20, #32]
LBB2_158:                               ; =>This Inner Loop Header: Depth=1
	stp	q1, q0, [sp, #48]               ; 32-byte Folded Spill
	stp	q3, q2, [sp, #16]               ; 32-byte Folded Spill
	add	x0, sp, #224
	add	x1, sp, #296
	bl	__Z16chacha_block_stdPjPKj
	ldp	q3, q2, [sp, #16]               ; 32-byte Folded Reload
	ldp	q0, q1, [sp, #224]
	eor.16b	v2, v2, v0
	eor.16b	v3, v3, v1
	ldp	q0, q1, [sp, #256]
	ldr	q4, [sp, #64]                   ; 16-byte Folded Reload
	eor.16b	v4, v4, v0
	str	q4, [sp, #64]                   ; 16-byte Folded Spill
	ldp	q4, q0, [sp, #48]               ; 32-byte Folded Reload
	eor.16b	v4, v4, v1
	str	q4, [sp, #48]                   ; 16-byte Folded Spill
	ldr	q1, [sp, #48]                   ; 16-byte Folded Reload
	subs	x19, x19, #1
	b.ne	LBB2_158
; %bb.159:
	stp	q2, q3, [x20]
	stp	q0, q1, [x20, #32]
LBB2_160:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x24, x0
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x21, x0
	cbz	x25, LBB2_164
; %bb.161:
	ldp	q2, q3, [x20]
	mov	x19, x25
	ldp	q0, q1, [x20, #32]
LBB2_162:                               ; =>This Inner Loop Header: Depth=1
	stp	q1, q0, [sp, #48]               ; 32-byte Folded Spill
	stp	q3, q2, [sp, #16]               ; 32-byte Folded Spill
	add	x0, sp, #224
	add	x1, sp, #296
	bl	__Z18chacha_block_reistPjPKj
	ldp	q3, q2, [sp, #16]               ; 32-byte Folded Reload
	ldp	q0, q1, [sp, #224]
	eor.16b	v2, v2, v0
	eor.16b	v3, v3, v1
	ldp	q0, q1, [sp, #256]
	ldr	q4, [sp, #64]                   ; 16-byte Folded Reload
	eor.16b	v4, v4, v0
	str	q4, [sp, #64]                   ; 16-byte Folded Spill
	ldp	q4, q0, [sp, #48]               ; 32-byte Folded Reload
	eor.16b	v4, v4, v1
	str	q4, [sp, #48]                   ; 16-byte Folded Spill
	ldr	q1, [sp, #48]                   ; 16-byte Folded Reload
	subs	x19, x19, #1
	b.ne	LBB2_162
; %bb.163:
	stp	q2, q3, [x20]
	stp	q0, q1, [x20, #32]
LBB2_164:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
Ltmp101:
Lloh75:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh76:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh77:
	adrp	x1, l_.str.18@PAGE
Lloh78:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #35                         ; =0x23
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp102:
; %bb.165:
	ucvtf	d0, x25
	mov	x8, #4634204016564240384        ; =0x4050000000000000
	fmov	d1, x8
	fmul	d10, d0, d1
	mov	x8, #4517110426252607488        ; =0x3eb0000000000000
	fmov	d0, x8
	fmul	d0, d10, d0
Ltmp103:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp104:
; %bb.166:
Ltmp105:
Lloh79:
	adrp	x1, l_.str.19@PAGE
Lloh80:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #12                         ; =0xc
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp106:
; %bb.167:
Ltmp107:
Lloh81:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh82:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh83:
	adrp	x1, l_.str.20@PAGE
Lloh84:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp108:
; %bb.168:
Ltmp109:
	sub	x8, x24, x22
	mov	x9, #225833675390976            ; =0xcd6500000000
	movk	x9, #16845, lsl #48
	scvtf	d0, x8
	fmov	d1, x9
	fdiv	d8, d0, d1
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp110:
; %bb.169:
Ltmp111:
Lloh85:
	adrp	x1, l_.str.21@PAGE
Lloh86:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp112:
; %bb.170:
	fdiv	d0, d10, d8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp113:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp114:
; %bb.171:
Ltmp115:
Lloh87:
	adrp	x1, l_.str.22@PAGE
Lloh88:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp116:
; %bb.172:
Ltmp117:
Lloh89:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh90:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh91:
	adrp	x1, l_.str.23@PAGE
Lloh92:
	add	x1, x1, l_.str.23@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp118:
; %bb.173:
Ltmp119:
	sub	x8, x23, x21
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	fdiv	d9, d0, d1
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp120:
; %bb.174:
Ltmp121:
Lloh93:
	adrp	x1, l_.str.21@PAGE
Lloh94:
	add	x1, x1, l_.str.21@PAGEOFF
	mov	w2, #4                          ; =0x4
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp122:
; %bb.175:
	fdiv	d0, d10, d9
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
Ltmp123:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp124:
; %bb.176:
Ltmp125:
Lloh95:
	adrp	x1, l_.str.22@PAGE
Lloh96:
	add	x1, x1, l_.str.22@PAGEOFF
	mov	w2, #7                          ; =0x7
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp126:
; %bb.177:
	fcmp	d9, #0.0
	b.le	LBB2_181
; %bb.178:
Ltmp127:
Lloh97:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh98:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh99:
	adrp	x1, l_.str.24@PAGE
Lloh100:
	add	x1, x1, l_.str.24@PAGEOFF
	mov	w2, #31                         ; =0x1f
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp128:
; %bb.179:
	fdiv	d0, d8, d9
Ltmp129:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp130:
; %bb.180:
Ltmp131:
Lloh101:
	adrp	x1, l_.str.25@PAGE
Lloh102:
	add	x1, x1, l_.str.25@PAGEOFF
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp132:
LBB2_181:
Ltmp133:
Lloh103:
	adrp	x19, __ZNSt3__14coutE@GOTPAGE
Lloh104:
	ldr	x19, [x19, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh105:
	adrp	x1, l_.str.26@PAGE
Lloh106:
	add	x1, x1, l_.str.26@PAGEOFF
	mov	x0, x19
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp134:
; %bb.182:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20]
Ltmp135:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp136:
; %bb.183:
Ltmp137:
Lloh107:
	adrp	x1, l_.str.27@PAGE
Lloh108:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp138:
; %bb.184:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #4]
Ltmp139:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp140:
; %bb.185:
Ltmp141:
Lloh109:
	adrp	x1, l_.str.27@PAGE
Lloh110:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp142:
; %bb.186:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #8]
Ltmp143:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp144:
; %bb.187:
Ltmp145:
Lloh111:
	adrp	x1, l_.str.27@PAGE
Lloh112:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp146:
; %bb.188:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #12]
Ltmp147:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp148:
; %bb.189:
Ltmp149:
Lloh113:
	adrp	x1, l_.str.27@PAGE
Lloh114:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp150:
; %bb.190:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #16]
Ltmp151:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp152:
; %bb.191:
Ltmp153:
Lloh115:
	adrp	x1, l_.str.27@PAGE
Lloh116:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp154:
; %bb.192:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #20]
Ltmp155:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp156:
; %bb.193:
Ltmp157:
Lloh117:
	adrp	x1, l_.str.27@PAGE
Lloh118:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp158:
; %bb.194:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #24]
Ltmp159:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp160:
; %bb.195:
Ltmp161:
Lloh119:
	adrp	x1, l_.str.27@PAGE
Lloh120:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp162:
; %bb.196:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #28]
Ltmp163:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp164:
; %bb.197:
Ltmp165:
Lloh121:
	adrp	x1, l_.str.27@PAGE
Lloh122:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp166:
; %bb.198:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #32]
Ltmp167:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp168:
; %bb.199:
Ltmp169:
Lloh123:
	adrp	x1, l_.str.27@PAGE
Lloh124:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp170:
; %bb.200:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #36]
Ltmp171:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp172:
; %bb.201:
Ltmp173:
Lloh125:
	adrp	x1, l_.str.27@PAGE
Lloh126:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp174:
; %bb.202:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #40]
Ltmp175:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp176:
; %bb.203:
Ltmp177:
Lloh127:
	adrp	x1, l_.str.27@PAGE
Lloh128:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp178:
; %bb.204:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #44]
Ltmp179:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp180:
; %bb.205:
Ltmp181:
Lloh129:
	adrp	x1, l_.str.27@PAGE
Lloh130:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp182:
; %bb.206:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #48]
Ltmp183:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp184:
; %bb.207:
Ltmp185:
Lloh131:
	adrp	x1, l_.str.27@PAGE
Lloh132:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp186:
; %bb.208:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #52]
Ltmp187:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp188:
; %bb.209:
Ltmp189:
Lloh133:
	adrp	x1, l_.str.27@PAGE
Lloh134:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp190:
; %bb.210:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #56]
Ltmp191:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp192:
; %bb.211:
Ltmp193:
Lloh135:
	adrp	x1, l_.str.27@PAGE
Lloh136:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp194:
; %bb.212:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x8
	str	w9, [x8, #8]
	ldr	w1, [x20, #60]
Ltmp195:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj
Ltmp196:
; %bb.213:
Ltmp197:
Lloh137:
	adrp	x1, l_.str.27@PAGE
Lloh138:
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp198:
; %bb.214:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldr	w9, [x8, #8]
	mov	w10, #-75                       ; =0xffffffb5
	and	w9, w9, w10
	orr	w9, w9, #0x2
	str	w9, [x8, #8]
Ltmp200:
Lloh139:
	adrp	x1, l_.str.12@PAGE
Lloh140:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	x0, x19
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne200100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp201:
; %bb.215:
	mov	x0, x20
	bl	__ZdlPv
	ldrsb	w8, [sp, #103]
	tbnz	w8, #31, LBB2_222
; %bb.216:
	ldrsb	w8, [sp, #127]
	tbnz	w8, #31, LBB2_223
LBB2_217:
	ldrsb	w8, [sp, #151]
	tbnz	w8, #31, LBB2_224
LBB2_218:
	ldrsb	w8, [sp, #183]
	tbnz	w8, #31, LBB2_225
LBB2_219:
	ldrsb	w8, [sp, #215]
	tbnz	w8, #31, LBB2_226
LBB2_220:
	ldur	x8, [x29, #-136]
Lloh141:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh142:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh143:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_227
LBB2_221:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #1024
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #128            ; 16-byte Folded Reload
	ret
LBB2_222:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
	ldrsb	w8, [sp, #127]
	tbz	w8, #31, LBB2_217
LBB2_223:
	ldr	x0, [sp, #104]
	bl	__ZdlPv
	ldrsb	w8, [sp, #151]
	tbz	w8, #31, LBB2_218
LBB2_224:
	ldr	x0, [sp, #128]
	bl	__ZdlPv
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB2_219
LBB2_225:
	ldr	x0, [sp, #160]
	bl	__ZdlPv
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB2_220
LBB2_226:
	ldr	x0, [sp, #192]
	bl	__ZdlPv
	ldur	x8, [x29, #-136]
Lloh144:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh145:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh146:
	ldr	x9, [x9]
	cmp	x9, x8
	b.eq	LBB2_221
LBB2_227:
	bl	___stack_chk_fail
LBB2_228:
Ltmp208:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp209:
	b	LBB2_237
LBB2_229:
Ltmp206:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp207:
	b	LBB2_237
LBB2_230:
Ltmp216:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp217:
	b	LBB2_237
LBB2_231:
Ltmp214:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp215:
	b	LBB2_237
LBB2_232:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
LBB2_233:
Ltmp54:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp55:
	b	LBB2_237
LBB2_234:
Ltmp8:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp9:
	b	LBB2_237
LBB2_235:
Ltmp41:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne200100Ev
Ltmp42:
	b	LBB2_237
LBB2_236:
Ltmp39:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne200100Ev
Ltmp40:
LBB2_237:
	brk	#0x1
LBB2_238:
Ltmp43:
	b	LBB2_263
LBB2_239:
Ltmp7:
	b	LBB2_242
LBB2_240:
Ltmp10:
	bl	__Unwind_Resume
LBB2_241:
Ltmp2:
LBB2_242:
	mov	x19, x0
	ldrsb	w8, [sp, #447]
	tbz	w8, #31, LBB2_277
; %bb.243:
	ldr	x0, [sp, #424]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_244:
Ltmp56:
	mov	x19, x0
	b	LBB2_267
LBB2_245:
Ltmp59:
	mov	x19, x0
	b	LBB2_267
LBB2_246:
Ltmp51:
	mov	x19, x0
	b	LBB2_267
LBB2_247:
Ltmp26:
	mov	x19, x0
	b	LBB2_267
LBB2_248:
Ltmp13:
	mov	x19, x0
	b	LBB2_267
LBB2_249:
Ltmp213:
	b	LBB2_263
LBB2_250:
Ltmp205:
	b	LBB2_263
LBB2_251:
Ltmp48:
	mov	x19, x0
	b	LBB2_267
LBB2_252:
Ltmp36:
	b	LBB2_263
LBB2_253:
Ltmp33:
	b	LBB2_261
LBB2_254:
Ltmp218:
	b	LBB2_263
LBB2_255:
Ltmp210:
	b	LBB2_263
LBB2_256:
Ltmp202:
	b	LBB2_259
LBB2_257:
Ltmp100:
	b	LBB2_259
LBB2_258:
Ltmp199:
LBB2_259:
	mov	x19, x0
	mov	x0, x20
	bl	__ZdlPv
	b	LBB2_267
LBB2_260:
Ltmp20:
LBB2_261:
	mov	x19, x0
	add	x0, sp, #224
	bl	__ZNSt3__16localeD1Ev
	b	LBB2_264
LBB2_262:
Ltmp23:
LBB2_263:
	mov	x19, x0
LBB2_264:
	ldrsb	w8, [sp, #319]
	tbz	w8, #31, LBB2_266
; %bb.265:
	ldr	x0, [sp, #296]
	bl	__ZdlPv
LBB2_266:
	add	x0, sp, #424
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
LBB2_267:
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB2_273
; %bb.268:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
	ldrsb	w8, [sp, #127]
	tbnz	w8, #31, LBB2_274
LBB2_269:
	ldrsb	w8, [sp, #151]
	tbz	w8, #31, LBB2_275
LBB2_270:
	ldr	x0, [sp, #128]
	bl	__ZdlPv
	ldrsb	w8, [sp, #183]
	tbnz	w8, #31, LBB2_276
LBB2_271:
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB2_277
LBB2_272:
	ldr	x0, [sp, #192]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_273:
	ldrsb	w8, [sp, #127]
	tbz	w8, #31, LBB2_269
LBB2_274:
	ldr	x0, [sp, #104]
	bl	__ZdlPv
	ldrsb	w8, [sp, #151]
	tbnz	w8, #31, LBB2_270
LBB2_275:
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB2_271
LBB2_276:
	ldr	x0, [sp, #160]
	bl	__ZdlPv
	ldrsb	w8, [sp, #215]
	tbnz	w8, #31, LBB2_272
LBB2_277:
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
	.loh AdrpLdr	Lloh23, Lloh24
	.loh AdrpAdrp	Lloh21, Lloh23
	.loh AdrpLdr	Lloh21, Lloh22
	.loh AdrpAdrp	Lloh19, Lloh21
	.loh AdrpLdr	Lloh19, Lloh20
	.loh AdrpAdrp	Lloh17, Lloh19
	.loh AdrpLdr	Lloh17, Lloh18
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh25, Lloh26
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpLdrGot	Lloh33, Lloh34
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpLdrGot	Lloh37, Lloh38
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGot	Lloh41, Lloh42
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpLdrGot	Lloh47, Lloh48
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpLdrGot	Lloh59, Lloh60
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpLdrGot	Lloh65, Lloh66
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpLdrGot	Lloh71, Lloh72
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpLdrGot	Lloh75, Lloh76
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpLdrGot	Lloh81, Lloh82
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpLdrGot	Lloh89, Lloh90
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpLdrGot	Lloh97, Lloh98
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpLdrGot	Lloh103, Lloh104
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh129, Lloh130
	.loh AdrpAdd	Lloh131, Lloh132
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpAdd	Lloh137, Lloh138
	.loh AdrpAdd	Lloh139, Lloh140
	.loh AdrpLdrGotLdr	Lloh141, Lloh142, Lloh143
	.loh AdrpLdrGotLdr	Lloh144, Lloh145, Lloh146
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
	.uleb128 Ltmp203-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Ltmp204-Ltmp203                ;   Call between Ltmp203 and Ltmp204
	.uleb128 Ltmp205-Lfunc_begin0           ;     jumps to Ltmp205
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp204-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Ltmp211-Ltmp204                ;   Call between Ltmp204 and Ltmp211
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp211-Lfunc_begin0           ; >> Call Site 12 <<
	.uleb128 Ltmp212-Ltmp211                ;   Call between Ltmp211 and Ltmp212
	.uleb128 Ltmp213-Lfunc_begin0           ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp212-Lfunc_begin0           ; >> Call Site 13 <<
	.uleb128 Ltmp24-Ltmp212                 ;   Call between Ltmp212 and Ltmp24
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
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp50-Ltmp49                  ;   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin0            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp56-Lfunc_begin0            ;     jumps to Ltmp56
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp57-Ltmp53                  ;   Call between Ltmp53 and Ltmp57
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin0            ;     jumps to Ltmp59
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp99-Ltmp60                  ;   Call between Ltmp60 and Ltmp99
	.uleb128 Ltmp100-Lfunc_begin0           ;     jumps to Ltmp100
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp101-Lfunc_begin0           ; >> Call Site 26 <<
	.uleb128 Ltmp134-Ltmp101                ;   Call between Ltmp101 and Ltmp134
	.uleb128 Ltmp202-Lfunc_begin0           ;     jumps to Ltmp202
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp135-Lfunc_begin0           ; >> Call Site 27 <<
	.uleb128 Ltmp198-Ltmp135                ;   Call between Ltmp135 and Ltmp198
	.uleb128 Ltmp199-Lfunc_begin0           ;     jumps to Ltmp199
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp200-Lfunc_begin0           ; >> Call Site 28 <<
	.uleb128 Ltmp201-Ltmp200                ;   Call between Ltmp200 and Ltmp201
	.uleb128 Ltmp202-Lfunc_begin0           ;     jumps to Ltmp202
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp201-Lfunc_begin0           ; >> Call Site 29 <<
	.uleb128 Ltmp208-Ltmp201                ;   Call between Ltmp201 and Ltmp208
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp208-Lfunc_begin0           ; >> Call Site 30 <<
	.uleb128 Ltmp207-Ltmp208                ;   Call between Ltmp208 and Ltmp207
	.uleb128 Ltmp210-Lfunc_begin0           ;     jumps to Ltmp210
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp216-Lfunc_begin0           ; >> Call Site 31 <<
	.uleb128 Ltmp215-Ltmp216                ;   Call between Ltmp216 and Ltmp215
	.uleb128 Ltmp218-Lfunc_begin0           ;     jumps to Ltmp218
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp215-Lfunc_begin0           ; >> Call Site 32 <<
	.uleb128 Ltmp54-Ltmp215                 ;   Call between Ltmp215 and Ltmp54
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin0            ; >> Call Site 33 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin0            ;     jumps to Ltmp56
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 34 <<
	.uleb128 Ltmp9-Ltmp8                    ;   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin0            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin0            ; >> Call Site 35 <<
	.uleb128 Ltmp40-Ltmp41                  ;   Call between Ltmp41 and Ltmp40
	.uleb128 Ltmp43-Lfunc_begin0            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 36 <<
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
Lloh147:
	adrp	x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh148:
	ldr	x25, [x25, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x24, x25, #64
	str	x24, [x0, #424]
Lloh149:
	adrp	x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh150:
	ldr	x23, [x23, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x23, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x22, x0, x8
Ltmp219:
	add	x1, x0, #16
	mov	x0, x22
	bl	__ZNSt3__18ios_base4initEPv
Ltmp220:
; %bb.1:
	str	xzr, [x22, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x22, #144]
	add	x8, x25, #24
	str	x8, [x19]
	str	x24, [x19, #424]
Ltmp222:
	add	x0, x19, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp223:
; %bb.2:
Ltmp225:
	add	x0, x19, #16
	orr	w2, w21, #0x8
	mov	x1, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp226:
; %bb.3:
	cbnz	x0, LBB3_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
Ltmp227:
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Ltmp228:
LBB3_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB3_6:
Ltmp224:
	mov	x20, x0
	b	LBB3_9
LBB3_7:
Ltmp221:
	mov	x20, x0
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB3_8:
Ltmp229:
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
	.loh AdrpLdrGot	Lloh149, Lloh150
	.loh AdrpLdrGot	Lloh147, Lloh148
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
	.uleb128 Ltmp219-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp220-Ltmp219                ;   Call between Ltmp219 and Ltmp220
	.uleb128 Ltmp221-Lfunc_begin1           ;     jumps to Ltmp221
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp222-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp223-Ltmp222                ;   Call between Ltmp222 and Ltmp223
	.uleb128 Ltmp224-Lfunc_begin1           ;     jumps to Ltmp224
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp225-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp228-Ltmp225                ;   Call between Ltmp225 and Ltmp228
	.uleb128 Ltmp229-Lfunc_begin1           ;     jumps to Ltmp229
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp228-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp228             ;   Call between Ltmp228 and Lfunc_end1
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
Lloh151:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh152:
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
	.loh AdrpLdrGot	Lloh151, Lloh152
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
Lloh153:
	adrp	x0, l_.str.28@PAGE
Lloh154:
	add	x0, x0, l_.str.28@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne200100EPKc
	.loh AdrpAdd	Lloh153, Lloh154
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
Ltmp230:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne200100EPKc
Ltmp231:
; %bb.1:
Lloh155:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh156:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh157:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh158:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB6_2:
Ltmp232:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh157, Lloh158
	.loh AdrpLdrGot	Lloh155, Lloh156
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
	.uleb128 Ltmp230-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp230
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp230-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp231-Ltmp230                ;   Call between Ltmp230 and Ltmp231
	.uleb128 Ltmp232-Lfunc_begin2           ;     jumps to Ltmp232
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp231-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp231             ;   Call between Ltmp231 and Lfunc_end2
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
Lloh159:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh160:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh159, Lloh160
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
Ltmp233:
	blr	x8
Ltmp234:
; %bb.8:                                ;   in Loop: Header=BB9_5 Depth=1
	cmn	w0, #1
	b.eq	LBB9_15
LBB9_9:                                 ;   in Loop: Header=BB9_5 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w20, uxtb
	b.eq	LBB9_14
; %bb.10:                               ;   in Loop: Header=BB9_5 Depth=1
Ltmp236:
	sxtb	w1, w0
	mov	x0, x21
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp237:
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
Ltmp235:
	b	LBB9_20
LBB9_19:
Ltmp238:
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
Ltmp239:
	bl	___cxa_rethrow
Ltmp240:
; %bb.23:
	brk	#0x1
LBB9_24:
Ltmp241:
	mov	x19, x0
Ltmp242:
	bl	___cxa_end_catch
Ltmp243:
; %bb.25:
	mov	x0, x19
	bl	__Unwind_Resume
LBB9_26:
Ltmp244:
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
	.uleb128 Ltmp233-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp233
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp233-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp234-Ltmp233                ;   Call between Ltmp233 and Ltmp234
	.uleb128 Ltmp235-Lfunc_begin3           ;     jumps to Ltmp235
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp236-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp237-Ltmp236                ;   Call between Ltmp236 and Ltmp237
	.uleb128 Ltmp238-Lfunc_begin3           ;     jumps to Ltmp238
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp237-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp239-Ltmp237                ;   Call between Ltmp237 and Ltmp239
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp239-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp240-Ltmp239                ;   Call between Ltmp239 and Ltmp240
	.uleb128 Ltmp241-Lfunc_begin3           ;     jumps to Ltmp241
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp242-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp243-Ltmp242                ;   Call between Ltmp242 and Ltmp243
	.uleb128 Ltmp244-Lfunc_begin3           ;     jumps to Ltmp244
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp243-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Lfunc_end3-Ltmp243             ;   Call between Ltmp243 and Lfunc_end3
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
Lloh161:
	adrp	x0, l_.str.28@PAGE
Lloh162:
	add	x0, x0, l_.str.28@PAGEOFF
	bl	__ZNSt3__120__throw_out_of_rangeB8ne200100EPKc
	.loh AdrpAdd	Lloh161, Lloh162
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
Ltmp245:
	mov	x1, x20
	bl	__ZNSt12out_of_rangeC1B8ne200100EPKc
Ltmp246:
; %bb.1:
Lloh163:
	adrp	x1, __ZTISt12out_of_range@GOTPAGE
Lloh164:
	ldr	x1, [x1, __ZTISt12out_of_range@GOTPAGEOFF]
Lloh165:
	adrp	x2, __ZNSt12out_of_rangeD1Ev@GOTPAGE
Lloh166:
	ldr	x2, [x2, __ZNSt12out_of_rangeD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB11_2:
Ltmp247:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh165, Lloh166
	.loh AdrpLdrGot	Lloh163, Lloh164
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
	.uleb128 Ltmp245-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp245
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp245-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp246-Ltmp245                ;   Call between Ltmp245 and Ltmp246
	.uleb128 Ltmp247-Lfunc_begin4           ;     jumps to Ltmp247
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp246-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp246             ;   Call between Ltmp246 and Lfunc_end4
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
Lloh167:
	adrp	x8, __ZTVSt12out_of_range@GOTPAGE
Lloh168:
	ldr	x8, [x8, __ZTVSt12out_of_range@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh167, Lloh168
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
Ltmp248:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp249:
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
Ltmp251:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp252:
; %bb.4:
Ltmp253:
Lloh169:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh170:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp254:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp255:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp256:
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
Ltmp258:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne200100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp259:
; %bb.8:
	cbnz	x0, LBB13_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp261:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp262:
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
Ltmp263:
	b	LBB13_15
LBB13_13:
Ltmp257:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB13_16
LBB13_14:
Ltmp260:
LBB13_15:
	mov	x20, x0
LBB13_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB13_18
LBB13_17:
Ltmp250:
	mov	x20, x0
LBB13_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp264:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp265:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB13_11
LBB13_20:
Ltmp266:
	mov	x19, x0
Ltmp267:
	bl	___cxa_end_catch
Ltmp268:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB13_22:
Ltmp269:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh169, Lloh170
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
	.uleb128 Ltmp248-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp249-Ltmp248                ;   Call between Ltmp248 and Ltmp249
	.uleb128 Ltmp250-Lfunc_begin5           ;     jumps to Ltmp250
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp251-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp252-Ltmp251                ;   Call between Ltmp251 and Ltmp252
	.uleb128 Ltmp260-Lfunc_begin5           ;     jumps to Ltmp260
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp253-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp256-Ltmp253                ;   Call between Ltmp253 and Ltmp256
	.uleb128 Ltmp257-Lfunc_begin5           ;     jumps to Ltmp257
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp258-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp259-Ltmp258                ;   Call between Ltmp258 and Ltmp259
	.uleb128 Ltmp260-Lfunc_begin5           ;     jumps to Ltmp260
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp261-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp262-Ltmp261                ;   Call between Ltmp261 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin5           ;     jumps to Ltmp263
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp262-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp264-Ltmp262                ;   Call between Ltmp262 and Ltmp264
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp264-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp265-Ltmp264                ;   Call between Ltmp264 and Ltmp265
	.uleb128 Ltmp266-Lfunc_begin5           ;     jumps to Ltmp266
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp265-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp267-Ltmp265                ;   Call between Ltmp265 and Ltmp267
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp267-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Ltmp268-Ltmp267                ;   Call between Ltmp267 and Ltmp268
	.uleb128 Ltmp269-Lfunc_begin5           ;     jumps to Ltmp269
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp268-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Lfunc_end5-Ltmp268             ;   Call between Ltmp268 and Lfunc_end5
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
Ltmp270:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp271:
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
Ltmp272:
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
	.uleb128 Ltmp270-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp270
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp270-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp271-Ltmp270                ;   Call between Ltmp270 and Ltmp271
	.uleb128 Ltmp272-Lfunc_begin6           ;     jumps to Ltmp272
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp271-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp271             ;   Call between Ltmp271 and Lfunc_end6
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
	.asciz	"basic_string"

.subsections_via_symbols
