bits 32

extern printf
extern scanf

section .rodata
    What_is_ur_name: db "What is your name ",10 , 0
    good_morning: db "Good Morning ", 0
    name: db "%s" ,0

section .bss
    inp  RESW 1000

section .text
    global main

    main:
        push ebp
        mov ebp, esp

        push What_is_ur_name
        call printf
        add esp, 4

        push inp
        push name
        call scanf
        add esp, 8

        push good_morning
        call printf
        add esp, 4

        push inp
        call printf
        add esp,4

        mov eax, 0
        mov esp, ebp
        pop ebp
        ret
 