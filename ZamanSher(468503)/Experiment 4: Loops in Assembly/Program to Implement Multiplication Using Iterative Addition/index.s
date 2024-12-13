AREA Program, CODE, READONLY ; Define code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =5              ; Load the first number (multiplicand) into R0
    LDR R1, =4              ; Load the second number (multiplier) into R1
    MOV R2, #0              ; Initialize R2 to 0 (result)
    MOV R3, #0              ; Initialize R3 to 0 (counter)

loop
    ADD R2, R2, R0          ; Add R0 (multiplicand) to R2 (result)
    ADD R3, R3, #1          ; Increment the counter
    CMP R3, R1              ; Compare counter with the multiplier
    BLT loop                ; If counter < multiplier, repeat loop

    END                     ; End of the program
