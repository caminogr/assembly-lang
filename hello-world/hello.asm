;section for program
section .text

;need to link
global main

;linkerのエントリーポイント
main:
  push dword len
  push dword msg
  push dword 1

  mov eax, 0x4
  sub esp, 4
  int 0x80 ;call kernel

  add esp, 16

  push dword 0

  mov eax, 0x1
  sub esp, 4
  int 0x80

section .data
  msg db "Hello, World", 0xa
  len equ $-msg ;length of the string
