	.file	"if.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	iiff
	.type	iiff, @function
iiff:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	li	a5,16
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	lw	a5,-20(s0)
	ble.p b1, a5, 12
	sext.w	a4,a5
	li	a5,12
	ble	a4,a5,.L3
	li	a5,12
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	slliw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	iiff, .-iiff
	.ident	"GCC: (g2ee5e430018) 12.2.0"
	.section	.note.GNU-stack,"",@progbits

    lw  a5,-20(s0) 
    ble.p b1, a5, 12 // precompute the branch outcome
    ...
    ble b1, .L3  // reslove the branch in decode stage
    ...
.L3:


