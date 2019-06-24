bits 32

extern printf

section .data
    input_1: db "The even numbers are ", 10, 0
    num: db "%d",0

section .text
    global main

    main:
        push ebp
        mov ebp, esp

        push input_1
        call printf
        add esp,4

        mov ebx,0

loop_1:
        inc ebx
        inc ebx
        push ebx
        push num
        call printf
        add esp,4
        cmp ebx,100
        jl loop_1

        mov eax, 0
        mov esp, ebp
        pop ebp
        ret

