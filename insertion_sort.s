	.file	"insertion_sort.c"
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
	.globl	insertion_sort
	.type	insertion_sort, @function
insertion_sort:
	addi	sp,sp,-96
	sd	s0,88(sp)
	sd	s1,80(sp)
	sd	s2,72(sp)
	sd	s3,64(sp)
	sd	s4,56(sp)
	addi	s0,sp,96
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-88(s0)
	sd	a2,-80(s0)
	sd	a3,-72(s0)
	sd	a4,-64(s0)
	sd	a5,-56(s0)
	li	s4,10
	addi	s1,s0,-88
	addi	s1,s1,4
	j	.L2
.L6:
	lw	s3,0(s1)
	mv	s2,s1
	j	.L3
.L5:
	lw	a5,-4(s2)
	sw	a5,0(s2)
	addi	s2,s2,-4
	addi	a5,s0,-88
	beq	s2,a5,.L7
.L3:
	addi	a5,s2,-4
	lw	a5,0(a5)
	mv	a4,s3
	blt	a4,a5,.L5
	j	.L4
.L7:
	nop
.L4:
	sw	s3,0(s2)
	addi	s1,s1,4
.L2:
	mv	a5,s4
	slli	a5,a5,2
	addi	a4,s0,-88
	add	a5,a4,a5
	bltu	s1,a5,.L6
	nop
	nop
	ld	s0,88(sp)
	ld	s1,80(sp)
	ld	s2,72(sp)
	ld	s3,64(sp)
	ld	s4,56(sp)
	addi	sp,sp,96
	jr	ra
	.size	insertion_sort, .-insertion_sort
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
