section .data
message	db	"Hello, World!"

section .text
	global _start
_start:

mov	rax, 1
mov	rdi, 1
mov	rsi, message
mov	rdx, 13
syscall
mov	rax, 60
mov	rdi, 0
syscall
