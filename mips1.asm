.data
	num1: .half 0xff,200,300
	array: .word 1,2,3,4,5
	prompt: .asciiz "\nThe result is "
.text
.globl main
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 1
	la $t1, num1
	lh  $a0, 0($t1)
	syscall
	
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 1
	lh $a0, 2($t1)
	syscall
	
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0 , 1
	la $t2, array
	lw $a0, 8($t2)
	syscall
	


    	