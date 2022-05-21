      ******************************************************************
      *Hacer un programa para ingresar una lista de 10 números, luego informar el máximo.
      *Ejemplo: 5, 10, 20, 8, 25, 13, 35, -8, -5, 20. Se listará Máximo 35.
      *Ejemplo: 5, 10, 20, 8, 55, 13, 55, -8, -5, 20. Se listará Máximo 55.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO4.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CICLO PIC 9(2).
       01  BANDERA PIC 9(2) VALUE 0.
       01  NUM PIC S9(2).
       01  MAXIMO PIC S9(2).
       PROCEDURE DIVISION.

           DISPLAY "INGRESE LOS 10 VALORES".
           PERFORM CONTAR VARYING CICLO FROM 0 BY 1 UNTIL CICLO = 10.
           PERFORM MOSTRAR.
           STOP RUN.

               MOSTRAR.
                   DISPLAY "EL NUMERO MAXIMO INGRESADO ES: "MAXIMO.

               CONTAR.
                   ACCEPT NUM.
                   ADD 1 TO BANDERA.
                   IF BANDERA = 1
                       MOVE NUM TO MAXIMO
                       ELSE
                           IF NUM > MAXIMO
                               MOVE NUM TO MAXIMO
                           END-IF
                   END-IF.


       END PROGRAM EJERCICIO4.
