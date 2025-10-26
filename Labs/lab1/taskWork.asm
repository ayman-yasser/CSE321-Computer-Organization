.data
labelN: .asciiz "NAME:   "
labelI: .asciiz "ID:     "
labelC: .asciiz "COURSE: "
name: .asciiz "Ayman Yasser\n"
ID: .asciiz "20812022100404\n"
course: .asciiz "CSE321-Computer-Organization"
.text
main:
    li $v0 , 4
    la $a0 , labelN
    syscall

    li $v0 , 4
    la $a0 , name
    syscall

    li $v0 , 4
    la $a0 , labelI
    syscall

    li $v0 , 4
    la $a0 , ID
    syscall

    li $v0 , 4
    la $a0 , labelC
    syscall

    li $v0 , 4
    la $a0 , course
    syscall

    li $v0 , 10
    syscall