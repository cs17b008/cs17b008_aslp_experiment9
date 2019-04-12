.data
	a1: .double 1.0, 2.0
	a2: .double 3.0, 4.0
	b1: .double 5.0, 6.0
	b2: .double 7.0, 8.0
	c1: .double 0.0, 0.0
	c2: .double 0.0, 0.0
.text

main: 	
	la $s0,a1
	la $s1,a2
	la $s2,b1
	la $s3,b2
	la $s4,c1
	la $s5,c2
	li $s6,2
	addi $t0,$0,2
	addi $t1,$0,2
	jal loop1

	li $v0,10
	syscall
loop1:
	beq $t0,$0,loop2
	l.d $f0,($s0)
	l.d $f2,($s2)
	add.d $f4,$f0,$f2
	s.d $f4,($s4)
	addi $s4,$s4,8
	addi $s0,$s0,8
	addi $s2,$s2,8
	sub $t0,$t0,1
	j loop1
loop2: 
	beq $t1,$0,loop3
	l.d $f0,($s1)
	l.d $f2,($s3)
	add.d $f4,$f0,$f2
	s.d $f4,($s5)
	addi $s5,$s5,8
	addi $s1,$s1,8
	addi $s3,$s3,8
	sub $t1,$t1,1
	j loop2
loop3:
	jr $ra
