extern printf
extern scanf

section .data
	msg: db "enter two numbers",10,0
	str: db "%s",0
	in:  db "%d",0

	a: dd 0
	b: dd 0
section .text
	global main
		
	main:
	push ebp
	mov ebp,esp

	push msg
	push str
	call printf

	push a
	push in
	call scanf

	push b
	push in
	call scanf

	mov eax,[a]
	mov ebx,[b]
	mul ebx

	push eax
	push in
	call printf

	leave
	ret
