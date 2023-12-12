;Create a list of 12 integers (even and odd), of size 1 Byte, stored at address $90.
;Every time an odd value is found, 1 must be added to it and overwritten in the list.
;At the end of the program, all values ​​in the list must be even.
;At address $80 the number of elements in the list is indicated (LENGTH = 12).
;Save the total of odd numbers at address $81.



             ORG $80
LENGTH       DB $0C
ODD          DB $00

             ORG $90
LIST         DB $01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C

             ORG $EE00
             LDX #LIST
START:       LDA ,X
             AND #$01
             BEQ PAIR
             LDA ,X
             ADD #$01
             INC ODD
             STA ,X
             DEC LENGTH
             BEQ END
             INCX
             BRA START

PAIR:        INCX
             DEC LENGTH
             BEQ END
             BRA START

END:         SWI

             ORG $FFFA
             DW $EE00
             DW $EE00
             DW $EE00



