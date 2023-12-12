;Creates a list of 8 integers from address $83
;Determine if they are even numbers.
;Count the number of even numbers.


                ORG $83                                               
LIST            DB $45,$D1,$55,$78,$FF,$01,$0D,$FF   ;1                 
LENGTH          DB $08                                                
PAIR            DB $00                                                

                ORG $EE00
                LDX #LIST
START:          LDA ,X
                AND #$01        ;determine parity
                BEQ ISPAIR        ;if it is even jump to PAIR
CONTINUE:       DEC LENGTH
                BEQ END
                INCX
                BRA START
                
ISPAIR:         INC PAIR
                BRA CONTINUE
                
END:            SWI

                ORG $FFFA
                DW $EE00
                DW $EE00
                DW $EE00
                
