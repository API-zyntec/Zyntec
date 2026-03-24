Algoritmo "semnome"
Var
   r: inteiro
   var1, var2, aux, i, f1, f2, f_aux : inteiro // Adicionei variáveis de controle de exibição.
   resp : caractere //Auxilia no cálculo no próximo termo.
   termo : inteiro // variável para dizer em qual termo a sequência se encontra
   .
Inicio
   r <-1
   var1 <- 0
   var2 <- 1
   termo <- 2
   resp <- "s"

   enquanto r <> 0 faca
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
      leia (r)
      limpatela

      se (r=1) entao
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
         escreval("Aperte F9 para retornar ao menu principal")
         pausa
      senao
         se (r=2) entao
            escreval("Numeros triangulares")
            escreval("Aperte F9 para retornar ao menu principal")
            pausa
         senao
            se (r=3) entao
               escreval("Sequencia de números primos")
               escreval("Aperte F9 para retornar ao menu principal")
               pausa
            senao
               se (r=4) entao
                  escreval("Sequencia fatorial")
                  escreval("Aperte F9 para retornar ao menu principal")
                  pausa
               senao
                  se (r=5) entao
                     escreval("Sequencia de quadrados perfeitos")
                     escreval("Aperte F9 para retornar ao menu principal")
                     pausa
                  senao
                     se (r=6) entao
                        escreval("Sequencia de cubos")
                        escreval("Aperte F9 para retornar ao menu principal")
                        pausa
                     senao
                        se (r=7) entao
                           escreval("Sequencia geometrica")
                           escreval("Aperte F9 para retornar ao menu principal")
                           pausa
                        senao
                           se (r=8) entao
                              escreval("Sequencia alternada")
                              escreval("Aperte F9 para retornar ao menu principal")
                              pausa
                           senao
                              se (r=9) entao
                                 escreval("Sequencia tribonacci")
                                 escreval("Aperte F9 para retornar ao menu principal")
                                 pausa
                              senao
                                 se (r=0) entao
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