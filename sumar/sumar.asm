section .data
resultado db '0', 0xa , 0xd
longitud equ $-resultado
section .text
  global _start

_start:

mov eax,2
mov ebx,3
add eax,ebx

add eax,48
mov [resultado], eax 

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, longitud
int 0x80

mov eax,1
int 0x80
