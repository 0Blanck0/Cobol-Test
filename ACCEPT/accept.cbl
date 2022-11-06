       IDENTIFICATION DIVISION.
       PROGRAM-ID. AcceptTest.
       AUTHOR. Alexandre ELISABETH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NOM PIC X(12).

       PROCEDURE DIVISION.
           DISPLAY "Your name ? ".

           ACCEPT WS-NOM.

           DISPLAY "Bonjour " WS-NOM " !".

           STOP RUN.
