
	.text
	
	main:
	lui $t6,0xbfaf # bfaf/0000
	addi $t0,$t0,0x0000
	addi $t1,$t1,0x0fff # 30
	
	loop:
	xori $t5,$t5,0x0250 # 本指令用于测试跳转指令
	andi $t3,$t3,0x2277 # 本指令用于测试跳转指令
	xori $t4,$t4,0x0250 # 本指令用于测试跳转指令
	sw $t0, 0x0($t6)
	addi $t0,$t0,0x0001
	add $t2,$t2,$t0
	xori $t4,$t4,0x0250 # 本指令用于测试跳转指令

	j loop
	xori $t5,$t5,0x0250 # 本指令用于测试跳转指令
	andi $t5,$t5,0x2277 # 本指令用于测试跳转指令