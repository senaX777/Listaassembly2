.data
	msg1: .asciiz "digite o primeiro valor: "
	msg2: .asciiz "\ndigite o segundo valor: "
	msg3: .asciiz "\no resultado é: "
.text
main:
	li $v0,4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	La $a0, msg2
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	bgt $t1, $t0, maior
	
	sub $t2, $t0, $t1
	j mostra
maior:
	sub $t2, $t1, $t0
mostra:
	li $v0, 4
	la $a0, msg3
	syscall
	move $a0, $t2
	li, $v0, 1
	syscall
	

	
	
