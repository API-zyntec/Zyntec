Algoritmo "ZynTec_API_1?Bimestre"
// Disciplina   : Algoritmo
// Professor   : Sabha
Var
   op, aux, i, j, termo1, termo2, termo_aux, pause, termo, cubo_aux : inteiro // Adicionei variáveis de controle de exibição.
   cubo : real
Inicio
   op <-1

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
            limpatela
            escreval ("--- SEQUÊNCIA DE FIBONACCI ---")
            escreval ("Quanto termos deseja na sequencia. Tem que ser maior doque 3")
            leia (termo)
            
            enquanto termo < 3 faca  //confirma se é maior que 3
             limpatela
             escreval("O termo precisa maior que 3")
             leia(termo)
             se termo > 47 entao //limite 32bits
               limpatela
               escreval("O limite de 32bits do VisualG nos impede do termo ser maior que 47")
               escreval("Por favor insira novamente um número menor que 48")
               leia(termo)
            fimse
            fimenquanto
            
            limpatela
            termo1 <- 0
            termo2 <- 1
            escreval (" 1º termo: ", termo1)
            escreval (" 2º termo: ", termo2)
            
            para i de 3 ate termo faca //Lógica do número do termo
               termo_aux <- termo1 + termo2
               escreval (i, "º termo: ", termo_aux)
               termo1 <- termo2
               termo2 <- termo_aux
            fimpara
            
         escreval ("------------------------------")
         escreval("Aperte enter para retornar ao menu principal")
         leia(pause)
         limpatela//fim fibonacci
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
                  se (op=5) entao
                     escreval("Sequencia de quadrados perfeitos")
                     escreval("Aperte enter para retornar ao menu principal")
                     leia(pause)
                     limpatela
                  senao
                     se (op=6) entao
                     
                        escreval("Insira a quantidade de termos que você deseja")
                        leia(cubo_aux)
                        
                        enquanto (cubo_aux <= 0) faca //garante apenas positivos
                           limpatela
                           escreval("O termo precisa ser maior que 0")
                           leia(cubo_aux)
                        fimenquanto
                        
                        cubo <- 0 //inicia a sequencia
                           limpatela
                           escreval ("--- Sequência de cubos ---")

                           para j de 1 ate cubo_aux faca
                              cubo <- (j ^ 3)
                              escreval(j, "º termo: " ,cubo)
                           fimpara

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
