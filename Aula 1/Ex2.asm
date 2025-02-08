ORG 0000H

;a)

ADD A, R2

;b)

MOV A, R3
ADD A, R2

;c)

MOV A, R3
ADD A, #30

;d)

DEC R1

MOV A, R1

;e)

MOV R2, #31
MOV A, R2
ADD A, R1
MOV R2, A
;f)

MOV A, @R0 ;Nesse caso o valor em R0 indica a posicao de memoria que o programa ira buscar e esse valor sera utilizado
MOV R2, A
MOV A, R2
ADD A, @R1
MOV R2, A

