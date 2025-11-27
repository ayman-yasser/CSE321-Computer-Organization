.data
input: .asciiz "Enter a number (or 0 to terminate)"
output: .asciiz "sum = "

.text
main:
    move $t0, $zero
do:
    li $v0, 4
    la $a0, input
    syscall

    li $v0, 5
    syscall
    move $t1, $v0
while:
    add $t0, $t0, $t1
    bne $t1, $zero, do


    li $v0, 4
    la $a0, output
    syscall

    li $v0, 1
    move $a0, $t0
    syscall
exit:
    li $v0 , 10
    syscall