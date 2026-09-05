       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTAS.

       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01 WS-NUMERO-CONTA      PIC 9(6).
       01 WS-NOME-TITULAR      PIC X(30).
       01 WS-CPF               PIC X(11).
       01 WS-TIPO-CONTA        PIC X(10).
       01 WS-SALDO             PIC 9(7)V99.
       01 WS-STATUS-CONTA      PIC X(08).
       01 WS-OPCAO             PIC 9.
       01 WS-MENSAGEM          PIC X(40).
       01 WS-OPCAO-TEXTO       PIC X(20).
       01 WS-ACAO              PIC X(10).
       01 WS-CONTADOR          PIC 9(3).
       01 WS-CPF-FORMATADO     PIC X(14).
       01 WS-CONTINUA          PIC X VALUE 'S'.

       PROCEDURE DIVISION.

           DISPLAY '===================================='.
           DISPLAY 'SISTEMA DE CONTAS BANCARIAS'.
           DISPLAY '===================================='.
           DISPLAY '1 - CRIAR CONTA'.
           DISPLAY '2 - CONSULTAR CONTA'.
           DISPLAY '3 - ALTERAR CONTA'.
           DISPLAY '4 - EXCLUIR CONTA'.
           DISPLAY '5 - SAIR'.

           ACCEPT WS-OPCAO.

           IF WS-OPCAO = 1
               DISPLAY 'CRIAR CONTA'
           ELSE
               IF WS-OPCAO = 2
                   DISPLAY 'CONSULTAR CONTA'
               ELSE
                   IF WS-OPCAO = 3
                       DISPLAY 'ALTERAR CONTA'
                   ELSE
                       IF WS-OPCAO = 4
                           DISPLAY 'EXCLUIR CONTA'
                       ELSE
                           IF WS-OPCAO = 5
                               DISPLAY 'SAINDO DO SISTEMA'
                               STOP RUN
                           END-IF
                       END-IF
                   END-IF
               END-IF
           END-IF.

           STOP RUN.
