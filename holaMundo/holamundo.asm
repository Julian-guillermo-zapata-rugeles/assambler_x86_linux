;probado en gnu/linux
;nasm -f elf codigo_asm.asm
;  como resultado se obteniene un fichero .o (objeto)
;  para realizar el enlace :
;        ld -m elf_i386 -o salida fuente.o
;        el resultado será un fichero ejecutable para 32 bits compatible con x64


section .data
mensaje db "Hola Mundo!!",0xa,0xd
longitud equ $-mensaje

section .text
	global _start
_start:

mov eax, 4
mov ebx, 1
mov ecx, mensaje
mov edx, longitud
int 0x80

mov eax, 1
int 0x80
