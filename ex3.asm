;; usage: 
;; nasm -f elf32 ex3.asm -o ex3.o
;; ld -m elf_i386 ex3.o -o ex3
;; ./ex3
;; echo $?
;; expected output: 42
global _start

section .text
_start:	 
	mov ebx, 42					; exit status is 42
	mov eax, 1					; sys_exit system call
	jmp skip					; jump to skip label
	mov ebx, 13					; exit status is 13
skip:
	int 0x80
