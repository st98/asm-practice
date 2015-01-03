bits 16
org 0x7c00

boot:
  xor ax, ax
  mov ds, ax

  cld
  mov si, msg

loop:
  lodsb
  test al, al
  jz fin

  mov ah, 0x0e
  mov bh, 0x00
  mov bl, 0x07
  int 0x10

  jmp loop

fin:
  hlt

msg:
  db "Happy New Year!", 0x0d, 0x0a
  db "(^_^)", 0x0d, 0x0a, 0x00

times 0x200 - 2 - ($ - $$) db 0
db 0x55
db 0xaa
