@8193
D=A
@limit
M=D    //limit=8192
@count
M=0
@temp
M=0
(CHECK)
@count
M=0
@KBD
D=M
@WHITE
D;JGT //KBD Is one
@ZERO
0;JMP//KBD IS blk
(ZERO)
@count
D=M
@limit
D=D-M
@CHECK
D;JEQ  //check for limit 
@SCREEN
D=A-1
@temp
M=D
@count
D=M
@temp
M=D+M
@temp
A=M
M=0 //setting the register to ZERO

@count
M=M+1 //count=count+1

@ZERO
0;JMP //loop into ZERO again

(WHITE)
@count
D=M
@limit
D=D-M
@CHECK
D;JEQ  //check for limit 
@SCREEN
D=A-1
@temp
M=D
@count
D=M
@temp
M=D+M
@temp
A=M
M=-1 //setting the register to WHITE

@count
M=M+1 //count=count+1

@WHITE
0;JMP //loop into WHITE again


















