;Create a list of integers from address $80 to $90.
;Apply Ca1 to all elements and keep them in the same direction.

                ORG $80                                               ;memory address
LISTA           DB $45,$D1,$55,$78,$FF,$01,$33,$A0,$D4,$54,$22        ;random integers
LENGTH          DB $0B                                                ;list length

                ORG $EE00         ;program direction
                LDX #LISTA        ;load at index x
START:          LDA ,X            ;load at acumulator
                COMA              ;Ca1
                STA ,X            ;overwrite
                DEC LENGTH        ;LENGTH--
                BEQ END           ;jump if flag Z=1
                INCX              ;X++
                BRA START         ;jump to START
               
END:           SWI

               ORG $FFFA
               DW $EE00
               DW $EE00
               DW $EE00
