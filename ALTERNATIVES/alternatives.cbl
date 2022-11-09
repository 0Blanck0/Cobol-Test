       IDENTIFICATION DIVISION.
       PROGRAM-ID. Alternatives.
       AUTHOR. Alexandre ELISABETH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-CONDITION1 PIC 9 VALUE 0.
       01 WS-AGE PIC 9(3) VALUE 0.
           88 BEBE       VALUE 0 THRU 3.
           88 ENFANT     VALUE 4 THRU 10.
           88 ADOLESCENT VALUE 11 THRU 17.
           88 MAJEUR     VALUE 18 THRU 130.

       PROCEDURE DIVISION.

           IF WS-CONDITION1 = 0 AND 1 = 1 THEN
               DISPLAY "Hello World !"
           END-IF.

           DISPLAY "Quelle est votre age ?   ".
           ACCEPT WS-AGE.

           IF WS-AGE >= 18 THEN
               DISPLAY "Vous etes majeur"
           ELSE
               DISPLAY "Vous etes mineur"
           END-IF.

           EVALUATE WS-AGE
            WHEN 0 THRU 10
                DISPLAY "Vous etes tres jeune"
            WHEN 11 THRU 18
                DISPLAY "Vous etes jeune"
            WHEN 19 THRU 25
                DISPLAY "Vous etes un jeune adulte"
            WHEN 26 THRU 50
                DISPLAY "Vous etes un adulte"
            WHEN 51 THRU 65
                DISPLAY "Vous etes un adulte accompli"
            WHEN 66 THRU 90
                DISPLAY "Belle vie"
            WHEN 91 THRU 100
                DISPLAY "Combattant felicitation !"
            WHEN OTHER
                DISPLAY "Age impossible a evaluer"
           END-EVALUATE.

           EVALUATE TRUE
            WHEN BEBE
                DISPLAY "Vous savez utiliser un ordinateur ????"
            WHEN ENFANT
                DISPLAY "Vous etes precosse non ??"
            WHEN ADOLESCENT
                DISPLAY "Vous etes un ado"
            WHEN MAJEUR
                DISPLAY "Vous etes toujours majeur"
            WHEN OTHER
                DISPLAY "Categorie impossible a evaluer"
           STOP RUN.
