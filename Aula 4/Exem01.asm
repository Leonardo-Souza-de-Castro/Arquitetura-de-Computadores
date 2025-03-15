ORG 0000H

LJMP INICIO

ORG 0100H
INICIO:

MOV A, #00H

JZ ROT_1 ; JZ -> Mapeia se o acumulador é zero se for faz o salto

CLR A

ROT_1:

JMP $