.data
input: .asciiz "Enter a number: "
output: .asciiz "the number is: "
positive: .asciiz "Positive"
negative: .asciiz "Negative"
zer: .asciiz "Zero"

.text
main:
    li $v0, 4
    la $a0, input
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, output
    syscall

    beq $t0, $zero, if
    bltz $t0, elseif
    bgtz, $t0, else

if:
    li $v0, 4
    la $a0, zer
    j endif
elseif:
    li $v0, 4
    la $a0, negative
    j endif
else:
    li $v0, 4
    la $a0, positive
    j endif
endif:
    syscall
exit:
    li $v0 , 10
    syscall