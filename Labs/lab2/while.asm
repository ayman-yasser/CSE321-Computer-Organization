.data
space: .asciiz " "

.text
main:
    li $t0, 1
    li $t1, 10

while:
    bgt $t0, $t1, endwhile
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, space
    syscall

    addi $t0, $t0, 1
    j while
endwhile:

exit:
    li $v0 , 10
    syscall