      ******************************************************************
      *Hacer un programa para ingresar un N valor que indica la cantidad de números que
      *componen una lista y luego solicitar se ingresen esos N números. Se pide informar cuantos
      *son positivos.
      *Ejemplo: Se ingresa como valor N un 5, y luego se ingresa: 10, -3, 2, 5, 4. Se listará
      *Cantidad de Positivos: 4
      *Ejemplo: Se ingresa como valor N un 6, y luego se ingresa: -10, -3, -2, 0, -5, -4. Se listará
      *Cantidad de Positivos: 0
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CICLO PIC 9 VALUE 0.
       01  NUM-CICLO PIC 9(2).
       01  NUM PIC S9(2).
       01  NUM-POSITIVO PIC 9(2).
       01  NUM-NEGATIVO PIC 9(2).
       PROCEDURE DIVISION.

           DISPLAY "INGRESE LA CANTIDAD DE VALORES".
           ACCEPT NUM-CICLO.

           DISPLAY "INGRESE LOS VALORES:"
           PERFORM LISTAR-NUMEROS VARYING CICLO FROM 0 BY 1
           UNTIL CICLO = NUM-CICLO.
           PERFORM MOSTRAR-RESULTADO.
           STOP RUN.

               MOSTRAR-RESULTADO.
                 DISPLAY "CANTIDAD DE NUMEROS POSITIVOS: "NUM-POSITIVO.
                 DISPLAY "CANTIDA DE NUMEROS NEGATIVOS: "NUM-NEGATIVO.

               LISTAR-NUMEROS.
                   ACCEPT NUM.
                   IF NUM > 0
                       ADD 1 TO NUM-POSITIVO
                       ELSE
                          IF NUM < 0
                             ADD 1 TO NUM-NEGATIVO
                          END-IF
                   END-IF.

       END PROGRAM EJERCICIO2.
