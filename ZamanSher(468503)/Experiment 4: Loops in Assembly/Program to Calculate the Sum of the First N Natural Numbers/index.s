AREA Program, CODE, READONLY ; Define code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =10             ; Load N (10) into R0
    MOV R1, #0              ; Initialize R1 to 0 (sum)
    MOV R2, #1              ; Initialize R2 to 1 (counter)

loop
    ADD R1, R1, R2          ; Add the counter (R2) to the sum (R1)
    ADD R2, R2, #1          ; Increment the counter (R2)
    CMP R2, R0              ; Compare counter with N
    BLE loop                ; If counter <= N, repeat loop

    END                     ; End of the program
