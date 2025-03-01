ORG 0000H

LJMP INICIO

ORG 0100H
INICIO:

MOV A, #00H

JC MENOR ; Compara o carry e faz o desvio se ele for 1

DEC A

MENOR:

INC A

JMP $