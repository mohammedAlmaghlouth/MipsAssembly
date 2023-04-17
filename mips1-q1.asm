
.data
.asciiz 
x1: "Enter 1st element in the sequence: "
x2: "Enter 2nd element in the sequence: "
x3: "Enter 3rd element in the sequence: "
x4: "Enter the number of generated elements: "

suffix: ", "
size: .word 0
	
.text	
main:   li $v0, 4			
	# Print X1
	la $a0, x1			
	syscall				
	li $v0, 5			
	# Read integer into %t0		
	syscall	
	move $t0, $v0	
	
	# The second integer
	
	li $v0, 4			
	# Print X2 
	la $a0, x2			
	syscall				
	li $v0, 5			
	# Read integer into %t1		
	syscall	
	move $t1, $v0
	
	# Get the third integer
	
	li $v0, 4			
	# Print X3 
	la $a0, x3			
	syscall				
	li $v0, 5			
	
	# Read integer into %t2			
	syscall	
	move $t2, $v0
	
	li $v0, 4			
	# print X4
	la $a0, x4
	syscall
	li $v0, 5			
	# Read the size integer into $t3
	syscall
	move $t3, $v0 			# Set the size into $t3
	
	
	# Print the first 3 numbers
	li $v0, 1			# Print first integer 
	move $a0, $t0
	syscall	
	li $v0, 4			# Print suffix [, ]
	la $a0, suffix
	syscall
	
	li $v0, 1			# Print second integer 
	move $a0, $t1
	syscall	
	li $v0, 4
	la $a0, suffix
	syscall
	
	li $v0, 1			# Print third integer 
	move $a0, $t2
	syscall	
	li $v0, 4
	la $a0, suffix
	syscall
		
	
	sub $t3, $t3, 1			# Subtract 1 to not print suffix at end
	li $t4, 0			# Counter Var for loop in $t4
	
	
	
	
	# loop bythe number of the size and do the arithmatic

loop:   beq $t3, $t4, end	# if $t3 == $t4 end the loop
	
	# Loop body
	move $t5, $t2	       # Set $t5 to int3
	
	add $t2, $t2, $t1     # Sum 3rd element with the last 2 ints
	add $t2, $t2, $t0
	
	move $t0, $t1	       # Set the 1st element to be 2nd
	move $t1, $t5	       # Set the 2nd element to the original 3rd
	
	li $v0, 1	       # Print the integer
	move $a0, $t2
	syscall	
	li $v0, 4	       # Print the suffix (, )
	la $a0, suffix
	syscall
	
	# FINISH THE BODY LOOP.
	
	
	addi $t4, $t4, 1			# Increment the counter
	j	loop		
			# get back to the top
	
	
end:    add $t2, $t2, $t1		# Sum 3rd element with the last 2 ints
	add $t2, $t2, $t0		# last time
	
	li $v0, 1				# Print the last int
	move $a0, $t2
	syscall
	
	# The end of the program
	li $v0, 10
	syscall
