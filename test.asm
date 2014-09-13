section .data
        msg db  "hello, world!"

section .text
        global _main
_main:
        ;; 64-bit syscalls on OS X need to have class specifier in bits 24-27.
        ;; 2 = UNIX/BSD
        ;; (See http: /www.opensource.apple.com/source/xnu/xnu-1699.26.8/osfmk/mach/i386/syscall_sw.h)
        ;; Syscall table is at /usr/include/sys/syscall.h. Generally the same #'s as Linux x86: http://docs.cs.up.ac.za/programming/asm/derick_tut/syscalls.html
        ;; But using the calling conventions of x86_64: args are (left-to-right): RDI, RSI, RDX, RCX, R8, R9
        mov rax, 0x2000004      ; 4 - sys_write
        mov rdi, 1              ; arg 1: destination. 1 = STDOUT
        mov rsi, msg            ; arg 2: char *
        mov rdx, 13             ; arg 3: len of output
        syscall
        mov rax, 0x2000001      ; 1 - sys_exit
        xor rdi, rdi            ; return code = 0
        syscall
