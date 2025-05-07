addi x4, x0, 0
addi x8, x0, 0
addi x9, x0, 1
addi x10, x0, 15
slli x17, x9, 2
slli x18, x10, 1
addi x16, x0, 2
sw x10, 0(x4)
lw x0, 0(x4)
addi x20, x16, 8
sub x16, x9, x16
xor x14, x10, x16
or x14, x14, x9
beq x0, x0, -24

最终结果（可用来检测程序正确性）：
	x4 = 0
	x8 = 0
	x9 = 1
	x10 = 15
	x14 = -15
	x16 = -1
	x17 = 4
	x18 = 30
	x20 = 10
	其余x均为X(高阻态)
	pc = 32