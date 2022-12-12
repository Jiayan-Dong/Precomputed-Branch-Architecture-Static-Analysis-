	.file	"bubble_sort.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.word	19
	.word	36
	.word	36
	.word	84
	.word	58
	.word	89
	.word	0
	.word	72
	.word	21
	.word	26
	.text
	.align	1
	.globl	bubble_sort
	.type	bubble_sort, @function
bubble_sort:
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-72(s0)
	sd	a2,-64(s0)
	sd	a3,-56(s0)
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	li	a5,10
	sw	a5,-28(s0)
	j	.L2
.L6:
	sw	zero,-24(s0)
	j	.L3
.L5:
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-56(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-56(a5)
	ble	a4,a5,.L4
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-56(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-56(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-56(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-32(s0)
	sw	a4,-56(a5)
.L4:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,a4,.L5
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,a4,.L6
	nop
	nop
	ld	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	bubble_sort, .-bubble_sort
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
