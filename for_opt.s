	.file	"for.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.text
	.align	1
	.globl	mfor
	.type	mfor, @function
mfor:
	addi	sp,sp,-64
	sd	s0,56(sp)
	sd	s1,48(sp)
	sd	s2,40(sp)
	sd	s3,32(sp)
	sd	s4,24(sp)
	addi	s0,sp,64
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	ld	a4,0(a5)
	sd	a4,-64(s0)
	ld	a5,8(a5)
	sd	a5,-56(s0)
	li	s3,0
	li	s4,4
	li	s2,0
	j	.L2
.L3:
	mv	s1,s2
	addi	s2,s2,1
	slli	a5,s1,2
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-16(a5)
	addw	a5,s3,a5
	sext.w	s3,a5
	slli	a5,s1,2
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-16(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	slli	a5,s1,2
	addi	a5,a5,-48
	add	a5,a5,s0
	sw	a4,-16(a5)
.L2:
	blt	s2,s4,.L3
	nop
	nop
	ld	s0,56(sp)
	ld	s1,48(sp)
	ld	s2,40(sp)
	ld	s3,32(sp)
	ld	s4,24(sp)
	addi	sp,sp,64
	jr	ra
	.size	mfor, .-mfor
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
