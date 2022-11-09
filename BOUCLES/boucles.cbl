       IDENTIFICATION DIVISION.
       PROGRAM-ID. LesBoucles.
       AUTHOR. Alexandre ELISABETH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-CPT PIC 9 VALUE 0.

       PROCEDURE DIVISION.
           PERFORM 5 TIMES
               DISPLAY "Perform boucle"
           END-PERFORM

           PERFORM 1000-TT-PRINCIPAL-DEB
              THRU 1000-TT-PRINCIPAL-FIN
             UNTIL WS-CPT > 3.

           PERFORM 9999-FIN-PROG-DEB
              THRU 9999-FIN-PROG-FIN.

       1000-TT-PRINCIPAL-DEB.

           DISPLAY "Hello".
           ADD 1 TO WS-CPT.

       1000-TT-PRINCIPAL-FIN.
           EXIT.

       9999-FIN-PROG-DEB.

           PERFORM WITH TEST AFTER UNTIL WS-CPT < 10
               DISPLAY "Work"
           END-PERFORM.

           PERFORM VARYING WS-CPT FROM 0 BY 1 UNTIL WS-CPT > 4
               DISPLAY WS-CPT
           END-PERFORM.

           DISPLAY "End".

       9999-FIN-PROG-FIN.
           STOP RUN.
