	.file	1 "tick_counter2.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"%u\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$0,28($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
	addi	$10, $0, 2
	addi	$11, $0, 3
	addi	$14, $0, 0
$L3:
	addi	$12, $0, 0
	addi	$13, $0, 20
# fix start
	rdhwr	$2, $2
# some code
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A1
	addu	$14, $11, $14
$A1:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A2
	addu	$14, $11, $14
$A2:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A3
	addu	$14, $11, $14
$A3:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A4
	addu	$14, $11, $14
$A4:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A5
	addu	$14, $11, $14
$A5:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A6
	addu	$14, $11, $14
$A6:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A7
	addu	$14, $11, $14
$A7:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A8
	addu	$14, $11, $14
$A8:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A9
	addu	$14, $11, $14
$A9:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A10
	addu	$14, $11, $14
$A10:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A11
	addu	$14, $11, $14
$A11:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A12
	addu	$14, $11, $14
$A12:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A13
	addu	$14, $11, $14
$A13:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A14
	addu	$14, $11, $14
$A14:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A15
	addu	$14, $11, $14
$A15:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A16
	addu	$14, $11, $14
$A16:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A17
	addu	$14, $11, $14
$A17:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A18
	addu	$14, $11, $14
$A18:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A19
	addu	$14, $11, $14
$A19:
	addiu	$12, $12, 1
	mul	$11, $10, $11
	bne	$12, $13, $A20
	addu	$14, $11, $14
$A20:
# fix end
	rdhwr	$3, $2
# subtraction
	subu	$2,$3,$2
# print
	move	$5,$2
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L2:
	lw	$2,28($fp)
	slt	$2,$2,100
	bne	$2,$0,$L3
	nop

	nop
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
