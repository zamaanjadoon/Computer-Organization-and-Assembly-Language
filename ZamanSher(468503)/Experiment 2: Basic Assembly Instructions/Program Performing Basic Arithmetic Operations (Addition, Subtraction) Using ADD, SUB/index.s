AREA Program, CODE, READONLY ; Define a code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =10             ; Load the value 10 into R0
    LDR R1, =20             ; Load the value 20 into R1
    ADD R2, R0, R1          ; R2 = R0 + R1 (10 + 20 = 30)
    SUB R3, R1, R0          ; R3 = R1 - R0 (20 - 10 = 10)
    END                     ; End of the program
