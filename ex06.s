.data
    msg1: .asciiz "digite um numero positivo: "
    msg2: .asciiz "maior valor: "
    msg3: .asciiz "\nmenor valor: "
.text
main:
    li $t0, 0
ler:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    blt $t1, 0, ler
    beq $t0, 0, primeiro
    bgt $t1, $t2, maior
    blt $t1, $t3, menor
    j contar
primeiro:
    move $t2, $t1
    move $t3, $t1
    j contar
maior:
    move $t2, $t1
    blt $t1, $t3, menor
    j contar
menor:
    move $t3, $t1
contar:
    addi $t0, $t0, 1
    blt $t0, 10, ler
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall