# Purpose : Print integer
.text 
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Read the integer and save it in $s0
	li $v0, 5
	syscall
	move $s0, $v0
	
	# Output the text
	li $v0, 4
	la $a0, output
	syscall

	# Output the number
	li $v0, 1
	move $a0, $s0
	syscall

	# Exit the program
	li $v0, 10
	syscall