       IDENTIFICATION DIVISION.
       PROGRAM-ID. LesVariables.
       AUTHOR. Alexandre ELISABETH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  SOLDE PIC S9(4).
       01  SALAIRE PIC 9(4)V99.
       01  WS-ZONE1.
           05 WS-VAR1 PIC 9(9)    USAGE COMP-3.
           05 WS-VAR2 PIC 9(5)V99 COMP-3.
           05 WS-VAR3 PIC 9(3)V99 PACKED-DECIMAL.
       01  WS-ZONE2.
           05 WS-VAR1 PIC 9(4)  USAGE IS COMP.
           05 WS-VAR2 PIC 9(7)  COMP.
           05 WS-VAR3 PIC 9(15) BINARY.
       01  BANQUE1 PIC ZZZ9.
       01  BANQUE2 PIC ***9.
       01  BANQUE3 PIC 9999.99.
       01  BANQUE4 PIC ZZZ9.99.
       01  TEST1 PIC ZZBZ9.99.
       01  TEST2 PIC --B-9.99.
       01  TEST3 PIC ++B+9.99.


       PROCEDURE DIVISION.
           MOVE +1698 TO SOLDE.
           MOVE +1000.15 TO SALAIRE.

           MOVE 157 TO BANQUE1.
           MOVE 157 TO BANQUE2.

           MOVE ZERO TO BANQUE3.
           MOVE ZERO TO BANQUE4.

           DISPLAY SOLDE.
           DISPLAY SALAIRE.

           DISPLAY BANQUE1.
           DISPLAY BANQUE2.
      
           DISPLAY BANQUE3.
           DISPLAY BANQUE4.

           STOP RUN.
