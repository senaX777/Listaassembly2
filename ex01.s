.data
	msg1: .asciiz "digite a largura"
	msg2: .asciiz "\ndigite o comprimento"
	msg3: .asciiz "\ndigite a altura"
	msg4: .asciiz "\no volume é: "
.text
main:
li $v0, 4
 la $a0, msg1
 syscall
li $v0, 5 
syscall
 add $t0, $v0, 0
  
li $v0, 4
 la $a0, msg2
 syscall
 
li $v0, 5 
syscall
 add $t1, $v0, 0 
li $v0, 4
 la $a0, msg3
 syscall
 
li $v0, 5 
syscall
 add $t2, $v0, 0
 
 mul $t3, $t0, $t1
 mul $t3, $t3, $t2

 li $v0, 4
 la $a0, msg4
 syscall

  add $a0,$t3, 0 
 li $v0, 1
 syscall

  