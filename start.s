//Testing the devKit compiler

.arm
.text
.global main

main:
        MOV         R0,0x4000000
        MOV         R1,0x400
        ADD         R1,R1,3 //Add a const
        STR         R1,[R0]

        MOV         R0,0x6000000
        MOV         R1,0xFF
        MOV         R2,0x9600

loop1:
        STRH        R1,[R0],2
        SUBS        R2,R2,1
        BNE         loop1

infin:
        B           infin
