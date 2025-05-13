bits 64

extern LockWorkStation
extern GetKeyState
extern Beep
extern Sleep
extern FreeConsole

NULL: equ 0
SHADOW_SPACE: equ 32+8

section .data
section .bss
    end: resb 8
section .text
    global main
    main:
        sub rsp, SHADOW_SPACE
        call 
		
        jmp hang
    hang:
        mov rcx, 0x45
        call GetKeyState

        test rax, 0x8000
        jz hang
        jmp lockPC
    lockPC:
        call LockWorkStation
        mov rcx, 0
        call rickroll
        jmp hang
    rickroll:
        mov [end], rcx

        mov rcx, 622
		mov rdx, 865
		call Beep
		mov rcx, 698
		mov rdx, 865
		call Beep
		mov rcx, 466
		mov rdx, 577
		call Beep
		mov rcx, 698
		mov rdx, 865
		call Beep
		mov rcx, 783
		mov rdx, 865
		call Beep
		mov rcx, 932
		mov rdx, 144
		call Beep
		mov rcx, 830
		mov rdx, 144
		call Beep
		mov rcx, 783
		mov rdx, 144
		call Beep
		mov rcx, 698
		mov rdx, 144
		call Beep
		mov rcx, 622
		mov rdx, 865
		call Beep
		mov rcx, 698
		mov rdx, 865
		call Beep
		mov rcx, 466
		mov rdx, 577
		call Beep
		mov rcx, 466
		mov rdx, 769
		call Beep
		mov rcx, 466
		mov rdx, 577
		call Beep
        cmp byte [end], 1
        je endrickroll
        mov rcx, 375
        call Sleep
        mov rcx, 466
		mov rdx, 188
		call Beep
		mov rcx, 466
		mov rdx, 188
		call Beep
		mov rcx, 523
		mov rdx, 188
		call Beep
		mov rcx, 622
		mov rdx, 188
		call Beep
        mov rcx, 375
        call Sleep
        mov rcx, 1
        call rickroll
        endrickroll:
            ret
