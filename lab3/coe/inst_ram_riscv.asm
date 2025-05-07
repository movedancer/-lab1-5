addi $a0, $r0, 0 		
addi $t0, $r0, 0 		
addi $t1, $r0, 1
addi $t2, $r0, 15
slli $s1, $t1, 2
srli $s2, $t2, 1
sw $t1, 0($a0)
lw $s0, 0($a0)
addi $s3, $s0, 8
sub $s0, $s0, $t1
xor $s3, $s0, $t2
or $s3, $s3, $t1
beq $0, $0, finish