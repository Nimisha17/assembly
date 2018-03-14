extern scanf
extern printf

section .data
	out: db "printing numbers from 1 to 10",10,0
	out1: db "%s",0
	in : db "%d",0
	n  dd 0

section .text
	global main
	main:
	push ebp
	mov ebp,esp
	
	push out
	push out1
	call printf

	push n
	push in
	call scanf
	mov ebx,1
	mov ecx,1
	
loop:
	mov edx,[n]
	imul edx,ebx
	push edx
	push in
	call printf
	inc ebx

	cmp ebx,11
	jne loop

	leave
	ret
	
