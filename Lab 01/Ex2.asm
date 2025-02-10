ORG 0000H
;a)

MOV A, #39

;b)
ADD A, R1

;c)
MOV A, R1
ADD A, R2
MOV R3, A

;d)
INC R3
ADD A, R3
MOV R3, A

