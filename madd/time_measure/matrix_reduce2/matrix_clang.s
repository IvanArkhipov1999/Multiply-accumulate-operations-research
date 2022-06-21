	.text
	.abicalls
	.option	pic0
	.section	.mdebug.abi32,"",@progbits
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.file	"big_matrix.c"
	.text
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$fp,480032,$ra
	.mask 	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:
	lui	$1, 7
	addiu	$1, $1, 21280
	subu	$sp, $sp, $1
	lui	$1, 7
	addu	$1, $sp, $1
	sw	$ra, 21276($1)          # 4-byte Folded Spill
	lui	$1, 7
	addu	$1, $sp, $1
	sw	$fp, 21272($1)          # 4-byte Folded Spill
	move	$fp, $sp
	lui	$1, 5
	addiu	$2, $zero, 0
	addiu	$4, $zero, 800
	addiu	$5, $zero, 200
	addu	$1, $fp, $1
	addiu	$3, $1, -7656
$BB0_1:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	addiu	$6, $zero, 0
	addiu	$7, $zero, 0
$BB0_2:                                 #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $3, $6
	addiu	$6, $6, 4
	sw	$7, 0($1)
	bne	$6, $4, $BB0_2
	addu	$7, $7, $2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addiu	$2, $2, 1
	bne	$2, $5, $BB0_1
	addiu	$3, $3, 800
# %bb.4:                                # %.preheader2
	lui	$1, 2
	addiu	$2, $zero, 0
	addiu	$4, $zero, 200
	addu	$1, $fp, $1
	addiu	$3, $1, 28952
$BB0_5:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	move	$5, $3
	addiu	$6, $zero, 0
$BB0_6:                                 #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addu	$1, $2, $6
	addiu	$6, $6, 1
	sw	$1, 0($5)
	bne	$6, $4, $BB0_6
	addiu	$5, $5, 4
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	addiu	$2, $2, 1
	bne	$2, $4, $BB0_5
	addiu	$3, $3, 800
# %bb.8:                                # %.preheader
	lui	$1, 5
	addiu	$2, $zero, 0
	addiu	$5, $fp, 24
	addiu	$6, $zero, 800
	addiu	$7, $zero, 200
	addiu	$8, $zero, 2000
	addu	$1, $fp, $1
	addiu	$3, $1, -7656
	lui	$1, 2
	addu	$1, $fp, $1
	addiu	$4, $1, 28952
$BB0_9:                                 # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_12 Depth 4
	move	$9, $3
	addiu	$10, $zero, 0
$BB0_10:                                #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
                                        #         Child Loop BB0_12 Depth 4
	addiu	$11, $zero, 0
	move	$12, $4
$BB0_11:                                #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_12 Depth 4
	sll	$1, $10, 5
	sll	$13, $10, 8
	move	$14, $12
	addiu	$24, $zero, 0
	addiu	$15, $zero, 0
	subu	$1, $13, $1
	sll	$13, $10, 10
	subu	$1, $13, $1
	sll	$13, $11, 2
	addu	$1, $5, $1
	addu	$13, $1, $13
	sw	$zero, 0($13)
lw	$25, 0($14)
addu	$1, $9, $24
lw	$1, 0($1)
$BB0_12:                                #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	#addu	$1, $9, $24
	#lw	$25, 0($14)
	addiu	$14, $14, 800
	addiu	$24, $24, 4
	#lw	$1, 0($1)
	mul	$1, $25, $1
	bne	$24, $6, $BB0_12
	addu	$15, $1, $15
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=3
	addiu	$12, $12, 4
	addiu	$11, $11, 1
	bne	$11, $7, $BB0_11
	sw	$15, 0($13)
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=2
	addiu	$10, $10, 1
	bne	$10, $7, $BB0_10
	addiu	$9, $9, 800
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=1
	addiu	$2, $2, 1
	bne	$2, $8, $BB0_9
	nop
# %bb.16:
	lui	$1, %hi($.str)
	lw	$5, 24($fp)
	jal	printf
	addiu	$4, $1, %lo($.str)
	move	$sp, $fp
	lui	$1, 7
	addu	$1, $sp, $1
	lw	$fp, 21272($1)          # 4-byte Folded Reload
	lui	$1, 7
	addu	$1, $sp, $1
	lw	$ra, 21276($1)          # 4-byte Folded Reload
	lui	$1, 7
	addiu	$1, $1, 21280
	jr	$ra
	addu	$sp, $sp, $1
	.set	at
	.set	macro
	.set	reorder
	.end	main
$func_end0:
	.size	main, ($func_end0)-main
                                        # -- End function
	.type	$.str,@object           # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"%i\n"
	.size	$.str, 4


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
	.text
