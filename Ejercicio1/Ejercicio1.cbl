      ******************************************************************
      * Hacer un programa para ingresar una lista de n�meros que finaliza cuando se ingresa un
      *cero, luego informar cu�ntos son positivos y cu�ntos son negativos.
      *Ejemplo: 4, -3, 8, -5, 18, 20, 0. Se listar� Positivos: 4 Negativos: 2.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC S9(3) VALUE 1.
       01  CORTE PIC 9 VALUE 0.
       01  CANT-POSITIVO PIC 9(2).
       01  CANT-NEGATIVO PIC 9(2).
       PROCEDURE DIVISION.

           PERFORM CICLO UNTIL NUM = 0.
           DISPLAY CANT-POSITIVO.
           DISPLAY CANT-NEGATIVO.
           STOP RUN.

            CICLO.
                ACCEPT NUM.
                IF NUM > 0
                    ADD 1 TO CANT-POSITIVO
                    ELSE
                    IF NUM < 0
                            ADD 1 TO CANT-NEGATIVO
               END-IF.

       END PROGRAM EJERCICIO1.
