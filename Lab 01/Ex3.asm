ORG 0000H
;a)
ADD A, R1
;b)
MOV A, R0
ADD A, R1
;c)
MOV A, R0
INC A
;d)
DEC R0
MOV A, R0
;e)
MOV A, R0
ADD A, R1
MOV R2, A
;f)
MOV A, @R0 ;Nesse caso o valor em R0 indica a posicao de memoria que o programa ira buscar e esse valor sera utilizado
MOV R2, A
MOV A, R2
ADD A, @R1
MOV R2, A

