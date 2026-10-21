.data
	msg1: .asciiz "insira a nota 1: "
	msg2: .asciiz "insira a nota 2: "
	msg3: .asciiz "insira a nota 3: "
	msg4: .asciiz "insira a nota 4: "
	ap: .asciiz "aprovado."
	ex: .asciiz "exame."
	re: .asciiz "retido."
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall
	move $t3, $v0
	
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	move $t4, $v0
	
	add $t0, $t1, $t2
	add $t0, $t0, $t3
	add $t0, $t0, $t4
	div $t0, $t0, 4
	
	bge $t0, 6, aprovado
	bge $t0 3, exame 
	
	li $v0, 4
	la $a0, re
	syscall
	li $v0, 10
	syscall
aprovado:
	li $v0, 4
	la $a0, ap
	syscall
	li $v0, 10
	syscall
exame:
	li $v0, 4
	la $a0, ex
	syscall
	li $v0, 10	