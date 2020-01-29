@i
M=0

@R2
M=0

(LOOP)
@i
D=M
@R0
D=D-M
@END
D;JEQ //if i==R0 then Jump to END

@R1
D=M
@R2
M=M+D //R2=R2+R1

@i
M=M+1 //i=i+1
@LOOP
0;JMP

(END)
@19
0;JMP

