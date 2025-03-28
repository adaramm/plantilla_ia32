; main.asm - Programa principal para usar con io.asm
; Ensamblar: nasm -f elf32 main.asm -o main.o
; Enlazar: ld -m elf_i386 main.o io.o -o programa

section .data
    msg_prompt      db  "Ingrese un número: ", 0
    msg_result      db  "El resultado es: ", 0
    test_num        dd  42

section .text
global _start
extern scan_num, print_num, print_str, print_newline

_start:
    ; Mostrar prompt
    mov esi, msg_prompt
    call print_str

    ; Leer número
    call scan_num
    mov [test_num], eax  ; Guardar número leído

    ; Mostrar resultado
    mov esi, msg_result
    call print_str
    mov eax, [test_num]
    call print_num
    call print_newline

    ; Salir
    mov eax, 1      ; sys_exit
    xor ebx, ebx    ; código 0
    int 0x80
