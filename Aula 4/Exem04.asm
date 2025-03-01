ORG 0000H

LJMP INICIO

ORG 0100H
INICIO:

JNB P1.3, ROT_1 ;JNB -> Salta se o valor do bit do pino esta inativo (0)
JB P1.2, LABEL ; JB -> Salta conforme o valor do bit do pino esta ativo (1)

MOV A, #00H

JC MENOR ; Compara o carry e faz o desvio se ele for 1

ROT_1:
DEC A

MENOR:

INC A

LABEL:
JMP $