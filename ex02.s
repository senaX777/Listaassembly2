.data
  msg1: .asciiz "insira o raio"
  msg2: .asciiz "\na circunferencia e: "
  .text
  main:
   li $v0, 4
   la $a0, msg1
   syscall
   li $v0, 5
   syscall
   add $t0, $v0, 0
   mul $t1, $t0, 6
   li $v0, 4
   la $a0, msg2
   syscall
   li $v0, 1
   add $a0, $t1, 0
   syscall
   