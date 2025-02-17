ORG 0000H
LJMP 5000H
ORG 5000H

MOV R3, #11110000B
MOV R2, #00000010B

MOV R1, #11001100B
MOV R0, #00000011B

;Somando R2 e R0
MOV A, R2
ADD A, R0
MOV R4, A

;Somando R3 e R1
MOV A, R3
ADDC A, R1
MOV R5, A

;Limpando o acumulador
CLR A

;Vendo se existe o carry
ADDC A, #00H

;Movendo carry para R6
MOV R6, A

JMP $

