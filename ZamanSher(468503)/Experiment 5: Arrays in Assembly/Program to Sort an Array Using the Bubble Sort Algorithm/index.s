AREA Program, CODE, READONLY ; Define code section
ENTRY                       ; Entry point for the program

main
    LDR R0, =array          ; Load the base address of the array into R0
    LDR R1, =5              ; Load the size of the array into R1

outer_loop
    SUB R2, R1, #1          ; Set the limit for the inner loop (size - 1)
    MOV R3, #0              ; Initialize the swapped flag

inner_loop
    LDR R4, [R0]            ; Load the current element into R4
    LDR R5, [R0, #4]        ; Load the next element into R5
    CMP R4, R5              ; Compare the current and next elements
    BLE skip_swap           ; If current <= next, skip swapping

    STR R5, [R0]            ; Swap the elements
    STR R4, [R0, #4]
    MOV R3, #1              ; Set the swapped flag

skip_swap
    ADD R0, R0, #4          ; Move to the next pair of elements
    SUBS R2, R2, #1         ; Decrement the inner loop counter
    BNE inner_loop          ; If inner loop is not finished, repeat

    CMP R3, #0              ; Check if any swapping occurred
    BEQ end                 ; If no swaps, the array is sorted

    SUB R0, R0, R1, LSL #2  ; Reset the pointer to the start of the array
    SUBS R1, R1, #1         ; Decrement the size counter
    BNE outer_loop          ; Repeat the outer loop if needed

end
    END                     ; End of the program

array
    DCD 34, 12, 89, 7, 45   ; Define the array with elements
