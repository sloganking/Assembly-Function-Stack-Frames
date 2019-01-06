;A = arg
;B = base pointer

	MOV B, SP	; initialize base pointer
	JMP main


func:
	PUSH B		; Push BP and move SP into BP
	MOV B, SP

	PUSH 1		; declare function variables
	PUSH 2
	

	MOV SP, B	; leave / 
	POP B
	RET

main:


	MOV A, 1
	MOV D, 2
	MOV C, 3

	PUSH 10
	CALL func

	HLT
