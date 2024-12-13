AREA Program, CODE, READONLY ; Define code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =10             ; Load the first number (10) into R0
    LDR R1, =10             ; Load the second number (10) into R1
    CMP R0, R1              ; Compare R0 and R1

    BEQ equal               ; Branch to 'equal' if R0 == R1
    BNE notequal            ; Branch to 'notequal' if R0 != R1

equal
    LDR R2, =1              ; If equal, load 1 into R2 (indicating equality)
    B end                   ; Skip the 'notequal' block and end the program

notequal
    LDR R2, =0              ; If not equal, load 0 into R2 (indicating inequality)

end
    END                     ; End of the program
