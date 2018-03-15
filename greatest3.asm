extern scanf
extern printf

section .data
	out: db "enter the three numbers",10,0
	out1: db "%s",0
	in : db "%d",0
	in1:db "%d",10,0
	n1  dd 0
	n2 dd 0
	n3 dd 0

section .text
	global main
	main:
	push ebp
	mov ebp,esp

	push n1
	push in
	call scanf

	push n2
	push in
	call scanf

	push n3
	push in
	call scanf

	mov eax,[n1]
	mov ebx,[n2]
	mov ecx,[n3]

	add eax,ebx
	add eax,ecx
	push eax
	push in1
	call printf

	mov eax,[n1]
	mov ebx,[n2]
	mov ecx,[n3]

	cmp eax,ebx
	jg check1
	cmp ebx,ecx
	jg print2
	
	push dword[n3]
	push in
	call printf
	leave 
	ret

check1:
	cmp eax,ecx
	jg print1
	
	push dword[n3]
	push in
	call printf
	leave 
	ret

print1:
	push dword[n1]
	push in
	call printf
	leave 
	ret
print2:
	push dword[n2]
	push in
	call printf
	
	leave 
	ret

	
