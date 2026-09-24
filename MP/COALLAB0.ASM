.MODEL SMALL
.STACK 100H

.DATA
    ; 1 Byte (8-bit) variable storing ASCII character 'A'
    char_db  DB  'A'
    
    ; 1 Word (16-bit) variable storing ASCII character 'B'
    char_dw  DW  'B'
    
    ; 1 Doubleword (32-bit) variable storing ASCII character 'C'
    char_dd  DD  'C'

    ; Strings for display formatting ('$' is the string terminator for INT 21H)
    msg1     DB  'DB  (Byte) Value: $'
    msg2     DB  10, 13, 'DW  (Word) Value: $'
    msg3     DB  10, 13, 'DD  (Doubleword) Value: $'

.CODE
MAIN PROC
    ; Initialize the Data Segment register
    MOV AX, @DATA
    MOV DS, AX

    ; ----------------------------------------------------
    ; 1. PRINT DB VALUE (8-bit)
    ; ----------------------------------------------------
    MOV AH, 09H          ; Function 09h: Print string
    LEA DX, msg1
    INT 21H

    MOV DL, char_db      ; 8-bit register DL gets 8-bit DB variable
    MOV AH, 02H          ; Function 02h: Print single character in DL
    INT 21H

    ; ----------------------------------------------------
    ; 2. PRINT DW VALUE (16-bit)
    ; ----------------------------------------------------
    MOV AH, 09H          
    LEA DX, msg2
    INT 21H

    MOV DX, char_dw      ; 16-bit register DX gets 16-bit DW variable
    MOV AH, 02H          ; DL automatically contains lower 8 bits ('B')
    INT 21H

    ; ----------------------------------------------------
    ; 3. PRINT DD VALUE (32-bit)
    ; ----------------------------------------------------
    MOV AH, 09H          
    LEA DX, msg3
    INT 21H

    ; In 16-bit mode, access the lower 16 bits using WORD PTR
    MOV DX, WORD PTR char_dd  
    MOV AH, 02H          ; DL contains lowest byte ('C')
    INT 21H

    ; Exit to DOS
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
