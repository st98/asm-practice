global _start

section .data
  msg: db "Hello, world!", 0xa
  len: equ $ - msg

section .text
_start:
  mov eax, 0x4
  mov ebx, 0x1
  mov ecx, msg
  mov edx, len
  int 0x80
  jmp exit

exit:
  mov eax, 0x1
  xor ebx, ebx
  int 0x80
