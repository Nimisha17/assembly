extern printf
extern scanf

section .data
	out1: db "enter the number",10,0
	in: db "%d",0
	num dd 0

section .text
	global main
	main:

	push ebp
	mov ebp,esp

	push out1
	call printf

	push num
	push in
	call scanf

	mov ebx,0
	mov ecx,1
	mov eax,[num]
	add eax,1
	

loop:
	add ebx,ecx
	inc ecx
	cmp ecx,eax

	jne loop

	push ebx
	push in
	call printf

	leave 
	ret
