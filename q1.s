main:
	li.s $f0,2.0
	li.s $f2,3.0
	add.s $f3,$f2,$f0
	sub.s $f4,$f2,$f0
	mul.s $f5,$f2,$f0
	div.s $f6,$f2,$f0
         
	li.d $f0,2.0
	li.d $f2,3.0
	add.d $f4,$f2,$f0
	sub.d $f6,$f2,$f0
	mul.d $f8,$f2,$f0
	div.d $f10,$f2,$f0

	li $v0,10
	syscall

