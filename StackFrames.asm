;A = arg
;B = base pointer

	MOV B, SP	; initialize base pointer
	JMP main

func:
	; Push BP to stack and then create new Stack frame
	PUSH B
	MOV B, SP

	; declare function variables
	PUSH 1
	PUSH 2
	
	; Declare local variable, equal to argument
	MOV A, B
	ADD A, 3
	MOV A, [A]
	PUSH A

	;call another function
	PUSH 5
	CALL func2

	POP D	; Puts what last function returned in D

	;return a variable
	MOV A, B
	ADD A, 3
	MOV [A], D	;returns D

	; leave
	MOV SP, B 
	POP B

	RET

func2:
	; Push BP and move SP into BP
	PUSH B
	MOV B, SP

	; declare function variables
	PUSH 1
	PUSH 2

	; Declare local variable, equal to argument
	MOV A, B	
	ADD A, 3
	MOV A, [A]
	PUSH A

	MOV D, 6	; We will be returning what is stored in D

	;return a variable
	MOV A, B
	ADD A, 3
	MOV [A], D	;returns D

	; leave
	MOV SP, B 
	POP B

	RET

main:
	PUSH 10
	CALL func

	POP A	;put what was returned in a register

	HLT
