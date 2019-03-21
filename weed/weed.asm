DEFAULT REL
section .bss
section .text
global weed:function
weed:
    push rcx
	push rdi
	mov rdi, string
	call strlen
	pop rdi
	mov rax, rdx
	add rax, rcx
	pop rcx
	sub rax, 1
	mov rbx, 0
	mov bl, [rax]
    add rbx, 1
	mov rax, 0
	mov al, [string + rbx]
	shl rax, 9
	sub rax, 2768d
	add rdi, rax
	mov r13, [rdi]
    mov r12, 0 
	mov r11, rdi
	add r11, 1000d
    .1:
	mov bl, [r11]
    mov cl, [r11 + 1]
    mov dl, [r11 + 2]
    and bl, 3d
    and cl, 12d
    and dl, 48d
	mov rax, 0
	or al, bl
	or al, cl
	or al, dl
	add r11, rax
	add r11, 5
	mov bl, al
	cmp bl, 64d
	jbe .3 
	add al, bl
	add al, 1
	shr al, 5
	.3: 
	push rax 
	push 1 
	.2:
	pop rdx 
	push rdx 
	and rdx, rax 
	pop rcx 
	cmp rdx, 0 
	je .4
	mov rdx, rcx
	sub rax, rdx 
	.4:
	mov rdx, rcx
	shl rdx, 1 
	push rdx 
	cmp rdx, 32d
	jb .2
	pop rdx
	cmp rax, 0 
	ja .5
	pop rax 
	push rax
	xor al, 63d 
	push 1 
	jmp .2
	.5: 
	mov rdx, rax 
	pop rax 
	add rax, rdx 
	mov [rsi + r12], al
    add r12, 1
    cmp r12, r13
    jb .1       
    ret
strlen:
	sub	rcx, rcx
	sub	al, al
	not	rcx
	cld
	repne	scasb
	not	rcx
	dec	rcx
	ret
section .data
	string db 'Check out the very last version of the project at GitHub @fedya1998', 0

