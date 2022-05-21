      ******************************************************************
      *Hacer un programa para ingresar una lista de 10 números, luego informar cuántos son
      *positivos, cuántos son negativos, y cuántos iguales a cero.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CICLO PIC 9(2).
       01  NUM PIC S9(2).
       01  POSITIVOS PIC 9(2).
       01  NEGATIVOS PIC 9(2).
       01  CEROS PIC 9(2).
       PROCEDURE DIVISION.

           DISPLAY "INGRESE 1O NUMEROS".
           PERFORM CONTAR VARYING CICLO FROM 0 BY 1 UNTIL CICLO = 10.
           PERFORM MOSTRAR.
           STOP RUN.

               MOSTRAR.
                   DISPLAY "CANTIDAD DE NUMEROS POSITIVOS: "POSITIVOS.
                   DISPLAY "CANTIDAD DE NUMEROS NEGATIVOS: "NEGATIVOS.
                   DISPLAY "CANTIDAD DE CEROS: "CEROS.

               CONTAR.
                   ACCEPT NUM.
                   IF NUM < 0
                       ADD 1 TO NEGATIVOS
                       ELSE
                           IF NUM > 0
                               ADD 1 TO POSITIVOS
                               ELSE
                                   ADD 1 TO CEROS
                           END-IF
                    END-IF.

       END PROGRAM EJERCICIO3.
