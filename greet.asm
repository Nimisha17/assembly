extern printf
extern scanf

section .data
	in : db "%s",0
	msg: db "hello %s have a great day",10,0
	name db 0

section .text

	global main
	main:

	push ebp
	mov ebp,esp
	
	push name
	push in
	call scanf

	push name
	push msg
	call printf


	leave
	ret

	
	
