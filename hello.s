.section .rodata
msg: .ascii "Hello, Fedora. I am novice to Assembly Lanuage!\n"
len = . - msg

.section .text
.global _start
_start:
    movq $1, %rax        # sys_write
    movq $1, %rdi        # stdout
    leaq msg(%rip), %rsi # buffer
    movq $len, %rdx      # count
    syscall

    movq $60, %rax       # sys_exit
    xorq %rdi, %rdi      # status 0
    syscall
