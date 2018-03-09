extern printf
extern scanf

section .data
	msg:  db "enter the two numbers",10,0
	str : db "%s",0
	out1: db "%d",0

	num1: dd 0
	num2: dd 0
section .text
	global main

	main:
	push ebp
	mov ebp,esp

	push msg
	push str
	call printf
	
	push num1	
	push out1
	call scanf
	
	push num2
	push out1
	call scanf
	 
	mov eax, [num1]
	mov ebx, [num1]
	add eax,ebx

	push eax
	push out1
	call printf	

	leave
	ret 
