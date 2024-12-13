AREA Program, CODE, READONLY ; Define code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =array          ; Load the base address of the array into R0
    LDR R1, =5              ; Load the size of the array (number of elements) into R1
    LDR R2, [R0]            ; Load the first element of the array into R2 (current max)
    ADD R0, R0, #4          ; Point to the second element in the array

loop
    LDR R3, [R0], #4        ; Load the current element into R3 and increment R0
    CMP R3, R2              ; Compare the current element with the current max
    MOVGT R2, R3            ; If the current element is greater, update the max
    SUBS R1, R1, #1         ; Decrement the array size counter
    BNE loop                ; If there are more elements, repeat the loop

    END                     ; End of the program

array
    DCD 12, 45, 7, 89, 34   ; Define the array with elements
