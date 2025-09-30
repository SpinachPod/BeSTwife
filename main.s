	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 5
	.globl	_new_bst_node                   ; -- Begin function new_bst_node
	.p2align	2
_new_bst_node:                          ; @new_bst_node
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
	mov	w0, #96                         ; =0x60
	bl	_malloc
	cbz	x0, LBB0_2
; %bb.1:
	mov	x1, x20
	mov	w2, #63                         ; =0x3f
	bl	_strncpy
	strb	wzr, [x0, #63]
	cmp	x19, #0
	cset	w8, eq
	stp	xzr, xzr, [x0, #72]
	strb	w8, [x0, #88]
	str	x19, [x0, #64]
LBB0_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_insert_child_left              ; -- Begin function insert_child_left
	.p2align	2
_insert_child_left:                     ; @insert_child_left
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
	mov	x20, x1
	mov	x19, x0
	mov	w0, #96                         ; =0x60
	bl	_malloc
	cbz	x0, LBB1_2
; %bb.1:
	mov	x1, x20
	mov	w2, #63                         ; =0x3f
	bl	_strncpy
	strb	wzr, [x0, #63]
	cmp	x19, #0
	cset	w8, eq
	stp	xzr, xzr, [x0, #72]
	strb	w8, [x0, #88]
	str	x19, [x0, #64]
LBB1_2:
	str	x0, [x19, #80]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_insert_child_right             ; -- Begin function insert_child_right
	.p2align	2
_insert_child_right:                    ; @insert_child_right
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
	mov	x20, x1
	mov	x19, x0
	mov	w0, #96                         ; =0x60
	bl	_malloc
	cbz	x0, LBB2_2
; %bb.1:
	mov	x1, x20
	mov	w2, #63                         ; =0x3f
	bl	_strncpy
	strb	wzr, [x0, #63]
	cmp	x19, #0
	cset	w8, eq
	stp	xzr, xzr, [x0, #72]
	strb	w8, [x0, #88]
	str	x19, [x0, #64]
LBB2_2:
	str	x0, [x19, #72]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #96                         ; =0x60
	bl	_malloc
	cbz	x0, LBB3_2
; %bb.1:
Lloh0:
	adrp	x8, l_str@PAGE
Lloh1:
	add	x8, x8, l_str@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldr	q0, [x8, #32]
	str	q0, [x0, #32]
	ldur	q0, [x8, #47]
	stur	q0, [x0, #47]
	strb	wzr, [x0, #63]
	stp	xzr, xzr, [x0, #72]
	mov	w8, #1                          ; =0x1
	strb	w8, [x0, #88]
	str	xzr, [x0, #64]
LBB3_2:
	str	x0, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"%p"

	.section	__TEXT,__const
l_str:                                  ; @str
	.asciz	"hello\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.subsections_via_symbols
