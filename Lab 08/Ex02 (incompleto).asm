ORG 0000H

LJMP INICIO

INICIO:
ORG 0100H
ENDER_UM EQU 20H
ENDER_DOIS EQU 28H

MOV R0, #ENDER_UM
MOV @R0, #2H
INC R0
MOV @R0, #2H
INC R0
MOV @R0, #1H
INC R0
MOV @R0, #2H
INC R0
MOV @R0, #3H
INC R0
MOV @R0, #1H
INC R0
MOV @R0, #1H
INC R0
MOV @R0, #7H
INC R0
MOV @R0, #5H

MOV R0, #ENDER_UM
MOV R1, #ENDER_DOIS

LOOP_COMPARACAO:
    MOV A, @R0         ; Carrega o valor em @R0 (posição de ENDER_UM)
    MOV B, @R1         ; Carrega o valor em @R1 (posição de ENDER_DOIS)
    ACALL Main         ; Chama a função Main para comparar os valores
    INC R0             ; Avança para o próximo endereço
    DEC R1
    mov 30h, r1             ; Avança para o próximo endereço
    CJNE R1, #24H, LOOP_COMPARACAO ; Se R0 não é igual a R1, continue o loop

    SJMP $             ; Loop infinito (ajuste conforme necessário)

Main:
	MOV A, @R0
	SUBB A, @R1
	
	JZ IGUAL
	JC R_UM_MENOR
	JNC R_ZERO_MENOR

IGUAL:
	RET

R_ZERO_MENOR:
	MOV A, @R0
	MOV R5, A
	RET

R_UM_MENOR:
	MOV A, @R1
	MOV R5, A
	RET



