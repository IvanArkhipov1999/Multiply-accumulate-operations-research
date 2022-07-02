	.file	1 "matrix.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"%i\012\000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,480040,$31		# vars= 480008, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32752
	addiu	$28,$28,%lo(__gnu_local_gp)
	li	$3,393216			# 0x60000
	li	$6,458752			# 0x70000
	sw	$31,32748($sp)
	ori	$3,$3,0xd338
	lw	$15,%got(__stack_chk_guard)($28)
	subu	$sp,$sp,$3
	ori	$2,$6,0x5320
	li	$12,-524288			# 0xfffffffffff80000
	addu	$2,$2,$sp
	lw	$4,0($15)
	ori	$6,$6,0x531c
	.cprestore	16
	ori	$12,$12,0xacfc
	addu	$6,$6,$sp
	addu	$12,$2,$12
	move	$3,$0
	li	$5,200			# 0xc8
	sw	$4,0($6)
	move	$2,$12
	addiu	$6,$2,800
$L23:
	move	$4,$0
$L3:
	sw	$4,0($2)
	addiu	$2,$2,4
	bne	$2,$6,$L3
	addu	$4,$4,$3

	addiu	$3,$3,1
	bne	$3,$5,$L23
	addiu	$6,$2,800

	li	$2,458752			# 0x70000
	li	$14,-327680			# 0xfffffffffffb0000
	ori	$2,$2,0x5320
	addu	$2,$2,$sp
	addiu	$14,$14,7676
	move	$3,$0
	addu	$14,$2,$14
	li	$5,200			# 0xc8
	move	$2,$14
	addiu	$6,$2,800
$L24:
	move	$4,$3
$L5:
	sw	$4,0($2)
	addiu	$2,$2,4
	bne	$2,$6,$L5
	addiu	$4,$4,1

	addiu	$3,$3,1
	bne	$3,$5,$L24
	addiu	$6,$2,800

	li	$2,458752			# 0x70000
	li	$13,-196608			# 0xfffffffffffd0000
	ori	$2,$2,0x5320
	addu	$2,$2,$sp
	li	$9,131072			# 0x20000
	ori	$13,$13,0x8efc
	addu	$13,$2,$13
	addiu	$9,$9,28928
	li	$24,2000			# 0x7d0
	addiu	$13,$13,800
	addu	$25,$12,$9
	move	$11,$13
$L25:
	move	$10,$12
$L12:
	addiu	$7,$11,-800
	move	$8,$14
$L9:
	mtlo	$0
	addu	$6,$8,$9
	move	$2,$8
	move	$3,$10
$L8:
	addiu	$2,$2,800
	lw	$5,0($3)
	lw	$4,-800($2)
	addiu	$3,$3,4
	bne	$6,$2,$L8
	msub	$5,$4

	mflo	$2
	addiu	$7,$7,4
	addiu	$8,$8,4
	bne	$7,$11,$L9
	sw	$2,-4($7)

	addiu	$10,$10,800
	bne	$10,$25,$L12
	addiu	$11,$7,800

	addiu	$24,$24,-1
	bne	$24,$0,$L25
	move	$11,$13

	li	$2,458752			# 0x70000
	ori	$2,$2,0x531c
	addu	$2,$2,$sp
	lw	$3,0($2)
	lw	$2,0($15)
	bne	$3,$2,$L22
	li	$3,458752			# 0x70000

	lw	$25,%call16(printf)($28)
	li	$2,-131072			# 0xfffffffffffe0000
	ori	$3,$3,0x5320
	addu	$3,$3,$sp
	li	$8,393216			# 0x60000
	addu	$2,$3,$2
	ori	$8,$8,0xd338
	lui	$4,%hi($LC0)
	lw	$5,-28932($2)
	addu	$sp,$sp,$8
	addiu	$4,$4,%lo($LC0)
	lw	$31,32748($sp)
	.reloc	1f,R_MIPS_JALR,printf
1:	jr	$25
	addiu	$sp,$sp,32752

$L22:
	lw	$25,%call16(__stack_chk_fail)($28)
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
