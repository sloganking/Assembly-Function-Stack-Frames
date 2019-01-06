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

	;call another function
	PUSH 5
	CALL func2
	
	; Put argument in stack frame
	MOV A, B	
	ADD A, 3
	MOV A, [A]
	PUSH A

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

	; Put argument in stack frame
	MOV A, B	
	ADD A, 3
	MOV A, [A]
	PUSH A

	; leave
	MOV SP, B 
	POP B

	RET

main:
	PUSH 10
	CALL func

	HLT
