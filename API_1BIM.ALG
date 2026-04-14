Algoritmo "ZynTec_API_1?Bimestre"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
Var
   op, var1, var2, aux, i, j, f1, f2, f_aux, pause, termo, c_aux : inteiro // Adicionei variáveis de controle de exibição.
   resp : caractere //Auxilia no cálculo no próximo termo.
   cubo : real
Inicio
   op <-1
   var1 <- 0
   var2 <- 1
   termo <- 2
   resp <- "s"

   enquanto op <> 0 faca
      limpatela
      escreval("Menu principal da calculadora")
      escreval("")
      escreval("Qual das opcoes abaixo deseja? ")
      escreval("1- Sequencia de fibonacci")
      escreval("2- Numeros triangulares")
      escreval("3- Sequencia de números primos")
      escreval("4- Sequencia fatorial")
      escreval("5- Sequencia de quadrados perfeitos")
      escreval("6- Sequencia de cubos")
      escreval("7- Sequencia geometrica")
      escreval("8- Sequencia alternada")
      escreval("9- Sequencia tribonacci")
      escreval("0- Encerrar")
      escreval("")
      leia (op)
      limpatela

      se (op=1) entao
         enquanto (resp = "s") ou (resp = "S") faca
            limpatela
            escreval ("--- SEQUÊNCIA DE FIBONACCI ---")

            // Refaz o histórico na tela.
            f1 <- 0
            f2 <- 1
            escreval (" 1º termo: ", f1)
            escreval (" 2º termo: ", f2)

            para i de 3 ate termo faca //Lógica do número do termo
               f_aux <- f1 + f2
               escreval (i, "º termo: ", f_aux)
               f1 <- f2
               f2 <- f_aux
            fimpara

            escreval ("------------------------------")
            escreval ("Deseja continuar a sequência? [S/N]") //Auto explicativo, mas usa a váriavel "resp" para o algoritmo saber a vontade do usuário.
            leia(resp)

            se (resp = "s") ou (resp = "S") entao
               termo <- (termo + 1)
               se (termo = 47) entao
                  escreval ("Limite atingido!") //Variáveis do tipo "inteiro" tem limite de 32 bits no VisualG. Se a sequência continuasse averia um estouro da memória da variável
                  resp <- "N" //Resposta fora do sim para acabar com o programa obrigatóriamente no 47º termo.
               fimse
            fimse
         fimenquanto
         escreval("Aperte enter para retornar ao menu principal")
         resp <- "s"
         termo <- 2
         leia(pause)
         limpatela
      senao
         se (op=2) entao
            escreval("Numeros triangulares")
            escreval("Aperte enter para retornar ao menu principal")
            leia(pause)
            limpatela
         senao
            se (op=3) entao
               escreval("Sequencia de números primos")
               escreval("Aperte enter para retornar ao menu principal")
               leia(pause)
               limpatela
            senao
               se (op=4) entao
                  escreval("Sequencia fatorial")
                  escreval("Aperte enter para retornar ao menu principal")
                  leia(pause)
                  limpatela
               senao
               //Mateus Daniel Santos 20
                  se (op=5) entao
                     escreval("Sequencia de quadrados perfeitos")
                     escreval("Aperte enter para retornar ao menu principal")
                     leia(pause)
                     limpatela
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
                        escreval("Aperte enter para retornar ao menu principal")
                        leia(pause)
                        limpatela
                     senao
                        se (op=7) entao
                           escreval("Sequencia geometrica")
                           escreval("Aperte enter para retornar ao menu principal")
                           leia(pause)
                           limpatela
                        senao
                           se (op=8) entao
                              escreval("Sequencia alternada")
                              escreval("Aperte enter para retornar ao menu principal")
                              leia(pause)
                              limpatela
                           senao
                              se (op=9) entao
                                 escreval("Sequencia tribonacci")
                                 escreval("Aperte enter para retornar ao menu principal")
                                 leia(pause)
                                 limpatela
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
   fimenquanto

Fimalgoritmo