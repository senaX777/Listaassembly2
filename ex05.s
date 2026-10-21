.data
    msg1: .asciiz "digite o primeiro valor: "
    msg2: .asciiz "digite o segundo valor: "
    msg3: .asciiz "a soma dos impares e: "

.text
main:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0

    bge $t0, $t1, organizar

    move $t2, $t0
    move $t3, $t1
    j loop

organizar:
    move $t2, $t1
    move $t3, $t0

loop:
    bgt $t2, $t3, mostrar

    rem $t5, $t2, 2
    beq $t5, 0, proximo

    add $t4, $t4, $t2

proximo:
    add $t2, $t2, 1
    j loop

mostrar:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    add $a0, $t4, 0
    syscall

    li $v0, 10
    syscall