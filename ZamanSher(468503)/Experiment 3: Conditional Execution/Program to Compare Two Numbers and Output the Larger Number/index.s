AREA Program, CODE, READONLY ; Define code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =15             ; Load the first number (15) into R0
    LDR R1, =25             ; Load the second number (25) into R1

    CMP R0, R1              ; Compare R0 and R1
    MOVGT R2, R0            ; If R0 > R1, move R0 to R2
    MOVLE R2, R1            ; If R0 <= R1, move R1 to R2

    END                     ; End of the program
