#!/bin/bash
ASM_NAME="$1"
nasm -f elf32 $ASM_NAME.asm -o $ASM_NAME.o
ld -m elf_i386 $ASM_NAME.o -o $ASM_NAME
