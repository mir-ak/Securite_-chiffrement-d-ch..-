operation_arithemitic_logic:
    ;operation arithmetic and logic
    not r0 #1
    and r0 #1 #0
    orr r0 #1 #0
    xor r0 #1 #1

    add r0 r0 #1
    mul r0 #2 #4
    sub r0 #1 #1
    div r0 #1 #1
    mod r0 #8 #2
    ret

print_and_modified_reg:
    prn r1              ;print r0, r31 and r0
    prc #10

    prn r31
    prc #10

    mov r1 #1           ;r1 = 1
    prn r1
    prc #10

    add r0 r1 #1        ;r0 = r1 + 1
    prn r0
    prc #10

    ret

hello:
    prc #72
    prc #101
    prc #108
    prc #108
    prc #111
    prc #32
    prc #87
    prc #111
    prc #114
    prc #108
    prc #100
    prc #10


    ret
test:
    mov r0 #6
    beq yes r0 #6
    ret

yes:
    prn #1
    prc #10
    ret

loop:
    add r1 r1 #1
    beq end_loop r1 #10
    jmp loop

end_loop:
    prn r1
    prc #10
    ret

main:
    sub r30 r30 #1                ; decr sp
    mov !r30 r31                  ; push ra

    cal print_and_modified_reg

    cal operation_arithemitic_logic
    cal hello
    cal test

    cal loop


    mov r31 !r30                  ; pop ra
    add r30 r30 #1                ; incr sp
    ret
