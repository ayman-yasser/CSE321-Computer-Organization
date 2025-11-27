.data
fNum: .asciiz "Enter first num: "
sNum: .asciiz "Enter second num"
res: .asciiz "result = "

.text
main:
    li $v0, 4
    la $a0, fNum
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, sNum
    syscall
    
    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, res
    syscall

    add $a0, $t0, $t1

    li $v0, 1
    syscall
exit:
    li $v0 , 10
    syscall