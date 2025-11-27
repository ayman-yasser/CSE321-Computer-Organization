.data
input: .asciiz "Enter a number: "
chosen: .asciiz "Choose a number to do an operation: "
output: .asciiz "result: "
opt0: .asciiz "\n1. add\n"
opt1: .asciiz "2. subtract\n"
opt2: .asciiz "3. multiply\n"


.text
main:
    li $v0, 4
    la $a0, opt0
    syscall

    li $v0, 4
    la $a0, opt1
    syscall

    li $v0, 4
    la $a0, opt2
    syscall

    li $v0, 4
    la $a0, chosen
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, input
    syscall

    li $v0, 5
    syscall
    move $t1, $v0
    
    li $v0, 4
    la $a0, input
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    li $t3 , 1
    li $t4 , 2
    li $t5 , 3

    beq $t0, $t3, case0
    beq $t0, $t4, case1
    beq $t0, $t5, case2

    j default

case0:
    add $a0, $t1, $t2 
    j break_
case1:
    sub $a0, $t1, $t2
    j break_
case2:
    mul $a0, $t1, $t2
    j break_
default:
    div $a0, $t1, $t2
break_:
    li $v0, 1
    syscall
    

exit:
    li $v0 , 10
    syscall