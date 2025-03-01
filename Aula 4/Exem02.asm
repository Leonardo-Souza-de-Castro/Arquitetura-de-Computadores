ORG 0000H

LJMP INICIO

ORG 0100H
INICIO:

MOV A, #00H

CLR A

CJNE A, #01, INICIO ; CNJE -> Compara e faz o salto se o valor for diferente

ROT_1:

JMP $