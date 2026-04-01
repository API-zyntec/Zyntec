Algoritmo "ZynTec_API_1ºBimestre"
Var
   op: inteiro
   var1, var2, aux, i, j, ant, at, prox, c_aux: inteiro // Adicionei variáveis de controle de exibição.
   resp: caractere //Auxilia no cálculo no próximo termo.
   termo: inteiro // variável para dizer em qual termo a sequência se encontra
   cubo: real
Inicio
   op <-1
   var1 <- 0
   var2 <- 1
   termo <- 2

   enquanto op <> 0 faca
      limpatela
      escreval("Menu principal da calculadora")
      escreval("")
      escreval("1- Sequência de Fibonacci")
      escreval("2- Números triangulares")
      escreval("3- Sequência de números primos")
      escreval("4- Sequência fatorial")
      escreval("5- Sequência de quadrados perfeitos")
      escreval("6- Sequência de cubos")
      escreval("7- Sequência geométrica")
      escreval("8- Sequência alternada")
      escreval("9- Sequência Tribonacci")
      escreval("0- Encerrar")
      escreval("")
      escreval("Qual das opções acima deseja? ")
      leia (op)
      limpatela

      se (op=1) entao
         resp <- "C"
         enquanto (resp = "C") ou (resp = "c") faca
            limpatela
            escreval ("--- Sequência de Fibonacci ---")

            // Refaz o histórico na tela.
            ant <- 0
            at <- 1
            escreval (" 1º termo: ", ant)
            escreval (" 2º termo: ", at)

            para i de 3 ate termo faca //Lógica do número do termo
               prox <- ant + at
               escreval (i,"º termo: ", prox)
               ant <- at
               at <- prox
            fimpara

            escreval ("")
            escreval ("------------------------------------")
            escreval ("Qual das opções deseja?") //usa a váriavel "resp" para o algoritmo saber a vontade do usuário.
            escreval ("------------------------------------")
            escreval ("[C] - Próximo número")
            escreval ("[V] - Voltar")
            leia(resp)

            termo <- (termo + 1)
            se (termo = 47) entao
               escreval ("Limite atingido!") //Variáveis do tipo "inteiro" tem limite de 32 bits no VisualG. Se a sequência continuasse averia um estouro da memória da variável
               resp <- "N" //Resposta fora do sim para acabar com o programa obrigatóriamente no 47º termo
            fimse
         fimenquanto
         
      senao
         se (op=2) entao
            escreval("Números triangulares")
            escreval("Aperte F9 para retornar ao menu principal")
            pausa
         senao
            se (op=3) entao
               escreval("Sequência de números primos")
               escreval("Aperte F9 para retornar ao menu principal")
               pausa
            senao
               se (op=4) entao
                  escreval("Sequência fatorial")
                  escreval("Aperte F9 para retornar ao menu principal")
                  pausa
               senao
                  se (op=5) entao
                     escreval("Sequência de quadrados perfeitos")
                     escreval("Aperte F9 para retornar ao menu principal")
                     pausa
                  senao
                     se (op=6) entao
                        resp <- "C"
                        c_aux <- 1
                        cubo <- 0

                        enquanto (resp = "C") ou (resp = "c") faca
                           limpatela
                           escreval ("--- Sequência de cubos ---")

                           para j de 1 ate c_aux faca
                                cubo <- (j ^ 3)
                                escreval(j, "º termo: " ,cubo)
                           fimpara

                           c_aux <- (c_aux + 1)

                           escreval ("------------------------------------")
                           escreval ("OPÇÕES SEQUÊNCIA") //usa a váriavel "resp" para o algoritmo saber a vontade do usuário.
                           escreval ("------------------------------------")
                           escreval ("[C] - Próximo número")
                           escreval ("[V] - Voltar")
                           leia(resp)
                        fimenquanto
                     senao
                        se (op=7) entao
                           escreval("Sequencia geometrica")
                           escreval("Aperte F9 para retornar ao menu principal")
                           pausa
                        senao
                           se (op=8) entao
                              escreval("Sequencia alternada")
                              escreval("Aperte F9 para retornar ao menu principal")
                              pausa
                           senao
                              se (op=9) entao
                                 escreval("Sequencia tribonacci")
                                 escreval("Aperte F9 para retornar ao menu principal")
                                 pausa
                              senao
                                 se (op=0) entao
                                    interrompa
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimenquanto            // yago

Fimalgoritmo