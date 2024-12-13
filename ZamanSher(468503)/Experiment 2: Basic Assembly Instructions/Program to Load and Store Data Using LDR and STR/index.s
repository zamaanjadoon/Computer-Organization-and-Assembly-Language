AREA Program, CODE, READONLY ; Define a code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =0x1000         ; Load the address 0x1000 into R0
    LDR R1, =42             ; Load the value 42 into R1
    STR R1, [R0]            ; Store the value of R1 into memory address in R0
    LDR R2, [R0]            ; Load the value from memory address in R0 into R2
    END                     ; End of the program
