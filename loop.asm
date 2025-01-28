.data
	newline: .asciiz "\n"    
	
	   
.macro done 
        li $v0, 10
        syscall
.end_macro
           
.text
main:   
        li $t0, 100000      # load immediate value 100 into register $t0 (loop counter)
        li $t1, 0        # load immediate value 0 into register $t1 (temporary storage)

loop:   
        # Your loop body code goes here
        addi $t1, $t1, 1 # increment $t1 by 1 (example operation)
        sub $t0, $t0, 1  # decrement the loop counter by 1
        
        li $v0 , 1
        move $a0, $t1
        syscall 
        
        li $v0, 4        # Load syscall for print string
        la $a0, newline  # Load the address of newline into $a0
        syscall          # Print the newline
        
        bne $t0, $zero, loop # branch to the loop if $t0 is not equal to 0
        
        
mult_instruction: 
	li $t0, 10          # Load immediate value 10 into register $t0
    	li $t1, 20          # Load immediate value 20 into register $t1
    	mult $t0, $t1       # Multiply $t0 and $t1

    	mfhi $t2            # Move the contents of HI into register $t2
    	mflo $t3            # Move the contents of LO into register $t3
       	 
div_instrution:
	li $t0, 20          # Load immediate value 20 into register $t0
    	li $t1, 3           # Load immediate value 3 into register $t1
    	div $t0, $t1        # Divide $t0 by $t1

    	mfhi $t2            # Move the contents of HI into register $t2 (remainder)
    	mflo $t3            # Move the contents of LO into register $t3 (quotient)
    	
    	
        # End of program
        done


       	