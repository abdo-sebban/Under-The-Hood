; rax is a general-purpose register in the x86-64 architecture.
; Registers are small, fast storage locations inside the CPU.
; The mov instruction copies a value into a register.

mov rax, 60


; Linux provides system calls that allow programs to request
; services directly from the kernel.
;
; Each system call is identified by a number stored in rax.
; On x86-64 Linux, 60 is the syscall number for exit.

mov rax, 60
syscall


; System calls receive their arguments through specific registers.
; The exit syscall receives its exit status as its first argument,
; which is passed through rdi.

mov rax, 60
mov rdi, 42
syscall


; We use Intel syntax to write instructions such as:
;
;     mov rax, 60

.intel_syntax noprefix

mov rax, 60
mov rdi, 42
syscall


; The linker uses the _start symbol as the entry point of the program.
; Execution begins at this label when the program is launched.

.intel_syntax noprefix

.global _start

_start:

    mov rax, 60
    mov rdi, 42
    syscall