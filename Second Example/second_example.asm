;Create a list of integers from address $80 to $85.
;Apply Ca2 to all elements and save them starting from address 90.

                ORG $80                                               ;memory address
LISTA           DB $45,$D1,$55,$78,$FF,$01                            ;random integers
LENGTH          DB $06                                                ;list length

                ORG $EE00         ;program direction
                LDX #LISTA        ;load at index x
START:          LDA ,X            ;load at acumulator
                NEGA              ;Ca2
                STA $10,X         ;write
                DEC LENGTH        ;LENGTH--
                BEQ END           ;jump if flag Z=1
                INCX              ;X++
                BRA START         ;jump to START

END:           SWI

               ORG $FFFA
               DW $EE00
               DW $EE00
               DW $EE00
