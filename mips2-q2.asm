.data
.asciiz
prompt: "Enter a string: " 
input: .space 400 #string butter of 100 digit
.text


main:

      li $v0, 4   
      la $a0, prompt #prompt for string
      syscall

      li $v0, 8   
      la $a0, input #ask for input
      li $a1, 100
      syscall
      move $s0, $a0 #move data to s0

      add $s1,$s1,0 #stores length of string

loop: 

      #loop while end of string
      lb $a0, 0($s0)              #load first character to a0
      beq $a0, 32, exitLoop       #if current character is space go to loop
      beq $a0, '\n', exitLoop     #if current character is space go to loop
      addi $s0, $s0, 1            #add index by one
      addi $s1, $s1, 1            #increase length by one
      beq $a0, $zero, exit        #else print character
      j loop

exitLoop:

loopPrint:
 
                           #loop while end of string
       lb $a0, 0($s0)      #load first character to a0
       sub $s0, $s0, 1     #add index by one
       sub $s1, $s1, 1     #add index by one
       li $v0, 11
       syscall
       bgez $s1,loopPrint
       
       


exit: