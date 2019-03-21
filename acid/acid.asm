DEFAULT REL
section .bss


section .text

global acid:function

acid:

    mov r13, rdx
    mov [rdi+30000], r13 
    mov r12, 0
    mov r11, rdi
    add r11, 31000d
    
    .1:
        mov dl, [rsi+r12]
        and dl, 1
        cmp dl, 0
        ja .3
        xor dl, 255d
        mov bl, 2d
        .4:
            sub dl, bl
            shl bl, 1
            cmp dl, 128d
            ja .4
        .3:
            shl dl, 5
    

        jmp .2

        .ret:
        mov bl, al
        and bl, 3d
        mov cl, al
        and cl, 12d
        mov dl, al
        and dl, 48d
        mov [r11], bl
        mov [r11 + 1], cl
        mov [r11 + 2], dl
        add r11, rax
        add r11, 5
        
        add r12, 1
        cmp r12, r13
        jb .1        


    ret
        	
.2:
    mov rax, 0
    mov al, [rsi+r12]
    sub al, dl
    jmp .ret 


