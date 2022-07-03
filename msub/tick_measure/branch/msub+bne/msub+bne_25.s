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
	addi	$12, $0, 64
	addi	$13, $0, 65
$L3:
# fix start
	rdhwr	$2, $2
# some code
	bne	$12, $13, $A1
	msub	$10, $11
$A1:
	bne	$12, $13, $A2
	msub	$10, $11
$A2:
	bne	$12, $13, $A3
	msub	$10, $11
$A3:
	bne	$12, $13, $A4
	msub	$10, $11
$A4:
	bne	$12, $13, $A5
	msub	$10, $11
$A5:
	bne	$12, $13, $A6
	msub	$10, $11
$A6:
	bne	$12, $13, $A7
	msub	$10, $11
$A7:
	bne	$12, $13, $A8
	msub	$10, $11
$A8:
	bne	$12, $13, $A9
	msub	$10, $11
$A9:
	bne	$12, $13, $A10
	msub	$10, $11
$A10:
	bne	$12, $13, $A11
	msub	$10, $11
$A11:
	bne	$12, $13, $A12
	msub	$10, $11
$A12:
	bne	$12, $13, $A13
	msub	$10, $11
$A13:
	bne	$12, $13, $A14
	msub	$10, $11
$A14:
	bne	$12, $13, $A15
	msub	$10, $11
$A15:
	bne	$12, $13, $A16
	msub	$10, $11
$A16:
	bne	$12, $13, $A17
	msub	$10, $11
$A17:
	bne	$12, $13, $A18
	msub	$10, $11
$A18:
	bne	$12, $13, $A19
	msub	$10, $11
$A19:
	bne	$12, $13, $A20
	msub	$10, $11
$A20:
	bne	$12, $13, $A21
	msub	$10, $11
$A21:
	bne	$12, $13, $A22
	msub	$10, $11
$A22:
	bne	$12, $13, $A23
	msub	$10, $11
$A23:
	bne	$12, $13, $A24
	msub	$10, $11
$A24:
	bne	$12, $13, $A25
	msub	$10, $11
$A25:

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
