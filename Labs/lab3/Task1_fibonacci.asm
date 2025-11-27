.data
newLine: .asciiz "\n"
input: .asciiz "Enter a number: "


.text

fibo:
    blez $a0, base_case
    li $t1, 1
    beq $a0, $t1, base_case

    li $t0, 1
    li $t1, 0
    li $t3, 2

loop:
    bgt $t3, $a0, end_loop
    move $t4, $t0
    add $t0, $t1, $t0
    move $t1, $t4
    addi $t3, $t3, 1
    j loop

end_loop:
    move $v0, $t0
    jr $ra

base_case:
    move $v0, $a0
    jr $ra


main:
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    li $v0, 4
    la $a0, input
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    move $a0, $t2
    jal fibo
    move $t3, $v0

    li $v0, 4
    la $a0, newLine
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 4
    la $a0, newLine
    syscall

    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra