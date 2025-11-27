.data
n:       .asciiz "Enter number of integers (n): "
input:   .asciiz "Enter an integer: "
output:  .asciiz "The average = "

zero: .float 0.0
one:  .float 1.0

.text
main:
    li $v0, 4
    la $a0, n
    syscall

    li $v0, 5
    syscall
    mtc1 $v0, $f1
    cvt.s.w $f1, $f1   # f1 <- n
 
    l.s $f2, zero      # f2 <- counter

    l.s $f3, zero      # f3 <- sum

    l.s $f4, one       # f4 <- increament

while:
    c.eq.s $f1, $f2    
    bc1t endwhile          

    li $v0, 4
    la $a0, input
    syscall

    li $v0, 5              
    syscall
    mtc1 $v0, $f0
    cvt.s.w $f0, $f0       

    add.s $f3, $f3, $f0 

    add.s $f2, $f2, $f4    

    j while

endwhile:
    div.s $f12, $f3, $f1 

    li $v0, 4
    la $a0, output
    syscall

    li $v0, 2              
    syscall

exit:
    li $v0, 10
    syscall