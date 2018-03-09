extern printf
extern scanf

section .data
	out: db "printing numbers from 1 to 10",10,0q

	in : db "%d"

section .text
	global main
	
	main:
	push ebp
	mov ebp,esp
	
	mov ebx,1

 	loop:
	push ebx
	push in 
	call printf

	inc ebx
	cmp ebx,11
			
	jne loop

	leave
	ret


