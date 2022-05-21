      ******************************************************************
      *Hacer un programa para ingresar una lista de 10 números, luego informar el máximo y
      *la posición del máximo en la lista. En caso de “empates” considerar la primera aparición.
      *Ejemplo: 5, -10, 20, 8, 25, 13, 35, -8, -5, 20. Se listará Máximo 35 Posición 7.
      *Ejemplo: 5, -10, 20, 8, 25, 13, 55, -8, 55, 20. Se listará Máximo 55 Posición 7.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO5.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CICLO PIC 9(2).
       01  NUM PIC S9(2).
       01  POSICION PIC 9(2) VALUE 1.
       01  CONTADOR PIC 9(2) VALUE 0.
       01  MAXIMO PIC S9(2).
       PROCEDURE DIVISION.

           DISPLAY "INGRESE 10 NUMEROS".
           PERFORM CALCULAR VARYING CICLO FROM 0 BY 1 UNTIL CICLO = 10.
           PERFORM MOSTRAR.
           STOP RUN.

               MOSTRAR.
                   DISPLAY "EL NUMERO MAXIMO INGREASADO ES: "MAXIMO", "
                   "CON LA POSICION: "POSICION.


               CALCULAR.
                   ACCEPT NUM.
                   ADD 1 TO CONTADOR.
                   IF CICLO = 0
                       MOVE NUM TO MAXIMO
                       ELSE
                           IF NUM > MAXIMO
                               MOVE NUM TO MAXIMO
                               MOVE CONTADOR TO POSICION
                           END-IF
                   END-IF.

       END PROGRAM  EJERCICIO5.
