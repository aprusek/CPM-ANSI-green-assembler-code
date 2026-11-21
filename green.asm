; GREEN.ASM - Output ANSI "green foreground" code on CP/M
; Assemble with ASM.COM:  ASM GREEN
; Then:                   LOAD GREEN
; Run:                    GREEN

BDOS    EQU     5               ; BDOS entry point
PRINT   EQU     9               ; BDOS function: print $-terminated string
ESC     EQU     1BH             ; ASCII escape
CR      EQU     0DH
LF      EQU     0AH

        ORG     100H            ; CP/M TPA start

START:  LXI     D,GREEN         ; set green foreground
        MVI     C,PRINT
        CALL    BDOS

        LXI     D,MSG           ; print a message in green
        MVI     C,PRINT
        CALL    BDOS

        LXI     D,RESET         ; reset attributes to default
        MVI     C,PRINT
        CALL    BDOS

        RET                     ; return to CCP (warm boot)

GREEN:  DB      ESC,'[32m$'     ; ESC [ 3 2 m
RESET:  DB      ESC,'[0m$'      ; ESC [ 0 m
MSG:    DB      'Hello in green!',CR,LF,'$'

        END
