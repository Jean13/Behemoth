[SECTION .text]

global _start

_start:
    jmp short getmsg

printmsg:
    xor eax,eax
    xor ebx,ebx
    xor ecx,ecx
    xor edx,edx
    mov al, 0x4
    mov bl, 0x1
    pop ecx
    mov dl, 0xa
    int 0x80

    xor eax, eax
    mov al, 0x1
    xor ebx,ebx
    int 0x80

getmsg:
    call printmsg
    db 'HelloKitty'

