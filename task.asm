INCLUDE Irvine32.inc

; Structure for Phone
Mobile STRUCT
    brand BYTE 20 DUP(?)
    release WORD ?
    cost DWORD ?
    storage DWORD ?
Mobile ENDS

.data
    ; Array of 5 phones
    phones Mobile 5 DUP(<>)
    
    ; Phone brand names
    brand1 BYTE "iPhone 14",0
    brand2 BYTE "Samsung S23",0
    brand3 BYTE "Google Pixel",0
    brand4 BYTE "OnePlus 11",0
    brand5 BYTE "Xiaomi 13",0
    
    ; Display labels
    l1 BYTE "=== PHONE STORE INVENTORY ===",0
    l2 BYTE "========================================",0
    l3 BYTE "Phone #",0
    l4 BYTE "Brand: ",0
    l5 BYTE "Release Year: ",0
    l6 BYTE "Cost: $",0
    l7 BYTE "Storage: ",0
    l8 BYTE " GB",0
    l9 BYTE 0dh,0ah,"=== CHEAPEST PHONE AVAILABLE ===",0
    
    ; Variables for finding minimum
    minCost DWORD 0FFFFFFFFh
    minPos DWORD 0

.code
main PROC
    call Clrscr
    
    ; Setup phone data
    call SetupPhones
    
    ; Show all phones
    call ShowAllPhones
    
    ; Find and show cheapest
    call FindMinCost
    call ShowCheapest
    
    exit
main ENDP

;-----------------------------------------------
; SetupPhones - Initialize phone data
;-----------------------------------------------
SetupPhones PROC
    LOCAL idx:DWORD
    
    mov idx, 0
    lea edi, phones
    
    ; Phone 1
    lea esi, brand1
    lea edi, [phones + 0 * SIZEOF Mobile]
    call CopyBrand
    mov (Mobile PTR [edi]).release, 2023
    mov (Mobile PTR [edi]).cost, 95000
    mov (Mobile PTR [edi]).storage, 256
    
    ; Phone 2
    lea esi, brand2
    lea edi, [phones + 1 * SIZEOF Mobile]
    call CopyBrand
    mov (Mobile PTR [edi]).release, 2023
    mov (Mobile PTR [edi]).cost, 88000
    mov (Mobile PTR [edi]).storage, 512
    
    ; Phone 3
    lea esi, brand3
    lea edi, [phones + 2 * SIZEOF Mobile]
    call CopyBrand
    mov (Mobile PTR [edi]).release, 2022
    mov (Mobile PTR [edi]).cost, 65000
    mov (Mobile PTR [edi]).storage, 128
    
    ; Phone 4
    lea esi, brand4
    lea edi, [phones + 3 * SIZEOF Mobile]
    call CopyBrand
    mov (Mobile PTR [edi]).release, 2023
    mov (Mobile PTR [edi]).cost, 72000
    mov (Mobile PTR [edi]).storage, 256
    
    ; Phone 5
    lea esi, brand5
    lea edi, [phones + 4 * SIZEOF Mobile]
    call CopyBrand
    mov (Mobile PTR [edi]).release, 2023
    mov (Mobile PTR [edi]).cost, 55000
    mov (Mobile PTR [edi]).storage, 128
    
    ret
SetupPhones ENDP

;-----------------------------------------------
; CopyBrand - Copy brand name
; ESI = source, EDI = destination
;-----------------------------------------------
CopyBrand PROC
    push ecx
    push esi
    push edi
    
    mov ecx, 20
copy_start:
    mov al, [esi]
    mov [edi], al
    cmp al, 0
    je copy_end
    inc esi
    inc edi
    loop copy_start
    
copy_end:
    pop edi
    pop esi
    pop ecx
    ret
CopyBrand ENDP

;-----------------------------------------------
; ShowAllPhones - Display all phone records
;-----------------------------------------------
ShowAllPhones PROC
    LOCAL count:DWORD
    
    ; Header
    mov edx, OFFSET l1
    call WriteString
    call Crlf
    mov edx, OFFSET l2
    call WriteString
    call Crlf
    call Crlf
    
    mov count, 1
    lea esi, phones
    
show_start:
    cmp count, 5
    ja show_end
    
    ; Phone number
    mov edx, OFFSET l3
    call WriteString
    mov eax, count
    call WriteDec
    call Crlf
    
    ; Brand name
    mov edx, OFFSET l4
    call WriteString
    lea edx, (Mobile PTR [esi]).brand
    call WriteString
    call Crlf
    
    ; Release year
    mov edx, OFFSET l5
    call WriteString
    movzx eax, (Mobile PTR [esi]).release
    call WriteDec
    call Crlf
    
    ; Cost
    mov edx, OFFSET l6
    call WriteString
    mov eax, (Mobile PTR [esi]).cost
    call WriteDec
    call Crlf
    
    ; Storage
    mov edx, OFFSET l7
    call WriteString
    mov eax, (Mobile PTR [esi]).storage
    call WriteDec
    mov edx, OFFSET l8
    call WriteString
    call Crlf
    call Crlf
    
    ; Next phone
    add esi, SIZEOF Mobile
    inc count
    jmp show_start
    
show_end:
    ret
ShowAllPhones ENDP

;-----------------------------------------------
; FindMinCost - Find cheapest phone
;-----------------------------------------------
FindMinCost PROC
    LOCAL counter:DWORD
    
    mov counter, 0
    mov minCost, 0FFFFFFFFh
    mov minPos, 0
    lea esi, phones
    
search_start:
    cmp counter, 5
    jae search_end
    
    ; Compare with current minimum
    mov eax, (Mobile PTR [esi]).cost
    cmp eax, minCost
    jae skip_update
    
    ; Update minimum
    mov minCost, eax
    mov eax, counter
    mov minPos, eax
    
skip_update:
    ; Next phone
    add esi, SIZEOF Mobile
    inc counter
    jmp search_start
    
search_end:
    ret
FindMinCost ENDP

;-----------------------------------------------
; ShowCheapest - Display cheapest phone
;-----------------------------------------------
ShowCheapest PROC
    ; Header
    mov edx, OFFSET l2
    call WriteString
    call Crlf
    mov edx, OFFSET l9
    call WriteString
    call Crlf
    mov edx, OFFSET l2
    call WriteString
    call Crlf
    
    ; Calculate address
    mov eax, minPos
    mov ebx, SIZEOF Mobile
    mul ebx
    lea esi, phones
    add esi, eax
    
    ; Brand
    mov edx, OFFSET l4
    call WriteString
    lea edx, (Mobile PTR [esi]).brand
    call WriteString
    call Crlf
    
    ; Release year
    mov edx, OFFSET l5
    call WriteString
    movzx eax, (Mobile PTR [esi]).release
    call WriteDec
    call Crlf
    
    ; Cost
    mov edx, OFFSET l6
    call WriteString
    mov eax, (Mobile PTR [esi]).cost
    call WriteDec
    call Crlf
    
    ; Storage
    mov edx, OFFSET l7
    call WriteString
    mov eax, (Mobile PTR [esi]).storage
    call WriteDec
    mov edx, OFFSET l8
    call WriteString
    call Crlf
    
    ret
ShowCheapest ENDP

END main