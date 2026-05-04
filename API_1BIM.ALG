Algoritmo "ZynTec_API_1?Bimestre"
// Disciplina   : Algoritmos
// Professor   : Fabiano Sabha Walczak 
Var
   op, i, j, pause, termo, sinal : inteiro
   valor, valor2, valor_aux : real

Inicio
   op <-1

   enquanto op <> 0 faca
      limpatela
      escreval("--- Menu principal da calculadora ---")
      escreval("")
      escreval("Qual das opções abaixo deseja? ")
      escreval("1- Sequência de Fibonacci")
      escreval("2- Números triângulares")
      escreval("3- Sequência de números primos")
      escreval("4- Sequência fatorial(Em Breve)")
      escreval("5- Sequência de quadrados perfeitos")
      escreval("6- Sequência de cubos")
      escreval("7- Sequência geométrica(Em Breve)")
      escreval("8- Sequência alternada")
      escreval("9- Sequência tribonacci(Em Breve)")
      escreval("0- Encerrar")
      escreval("")
      leia (op)
      limpatela

      se (op=1) entao
         limpatela
         escreval ("--- Sequência de Fibonacci ---")
         escreval ("Quanto termos deseja na sequencia. Tem que ser maior doque 3")
         leia (termo)

         enquanto (termo < 3) ou (termo > 47) faca  //confirma se Ã© maior que 3
            limpatela
            se termo > 47 entao //limite 32bits
               limpatela
               escreval("O limite de 32bits do VisualG nos impede do termo ser maior que 47")
               escreval("Por favor insira novamente um número menor que 48")
               leia(termo)
            senao
                 escreval("O termo precisa maior que 3")
                 leia(termo)
            fimse
         fimenquanto

         limpatela
         valor <- 0
         valor2 <- 1
         escreval (" 1º termo: ", valor)
         escreval (" 2º termo: ", valor2)

         para i de 3 ate termo faca //LÃ³gica do nÃºmero do termo
            valor_aux <- valor + valor2
            escreval (i, "º termo: ", valor_aux)
            valor <- valor2
            valor2 <- valor_aux
         fimpara

         escreval ("------------------------------")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela//fim fibonacci
      senao
         se (op=2) entao
            escreval("Números triângulares")
            valor <- 0
            valor2 <- 1
            escreval("insira o termo da sequencia que voce quer chegar")
            leia (termo)
            limpatela
            enquanto valor < termo faça   //enquanto a posição atual da repetição não alcançar o valor iserido pelo usuário, continua o calculo

                     valor_aux <- (valor2 * (valor2+1)/2)  //formula dos numeros triangulares

                     escreval (valor,"° termo:", valor_aux) //exibição de resultado

                     valor2 <- valor2 + 1 //adiciona 1

                     valor<- valor + 1
                     
            fimenquanto
            escreval("Pressione enter para retornar ao menu principal")
            leia(pause)
            limpatela
         senao
            se (op=3) entao
               escreval("--- Sequência de números primos ---")
               escreval("")
               escreval("Até qual número deseja listar?")
               leia(termo)

               escreval("Números primos encontrados:")
               para j de 1 ate termo faca
               valor <- 0
               // O 'j' passa por todos os números de 1 até o num1

               para i de 1 ate j faca
               se (j % i = 0) entao
               valor <- valor + 1
               // O 'i' testa se o número atual 'j' é primo
               fimse
               fimpara

               se (valor = 2) entao
               escreva(j:1, " ")
               // Se for primo (2 divisões), ele entra na lista
               fimse
               fimpara

               escreval("")
               escreval("")

               escreval("Pressione enter para retornar ao menu principal")
               leia(pause)
               limpatela
            senao
               se (op=4) entao
                  escreval("--- Sequência fatorial ---")
                  escreval("Pressione enter para retornar ao menu principal")
                  leia(pause)
                  limpatela
               senao
                  se (op=5) entao
                     escreval("--- Sequência de quadrados perfeitos ---")

                     //Inicio do laço de repetição para validação da Sequencia
                     repita
                        escreval("Informe qual a quantia de termos que você quer da sequência:")
                        leia(termo)

                        se (termo) <= 1 então
                           escreval("A quantia de termos deve ser maior que 1!!")
                        fimse
                     ate (termo > 1) então

                     para i de 1 até termo faça
                        valor <- (i ^ 2)
                        escreval(i, "º termo: ", valor)
                     fimpara

                     escreval("Pressione enter para retornar ao menu principal")
                     leia(pause)
                     limpatela
                  senao
                     se (op=6) entao
                        escreval ("--- Sequência de cubos ---")
                        escreval("Insira a quantidade de termos que vocÃª deseja")
                        leia(termo)

                        enquanto (termo <= 0) faca //garante apenas positivos
                           limpatela
                           escreval("O termo precisa ser maior que 0")
                           leia(termo)
                        fimenquanto

                        valor <- 0 //inicia a sequencia
                        limpatela
                        escreval ("--- Sequência de cubos ---")

                        para i de 1 ate termo faca
                           valor <- (i ^ 3)
                           escreval(i, "Âº termo: " ,valor)
                        fimpara

                        escreval("Pressione enter para retornar ao menu principal")
                        leia(pause)
                        limpatela
                     senao
                        se (op=7) entao
                           escreval("--- Sequência geometrica ---")
                           escreval("Pressione enter para retornar ao menu principal")
                           leia(pause)
                           limpatela
                        senao
                           se (op=8) entao
                              escreval("--- Sequência alternada ---")
                              escreval("Digite 1 para começo positivo ou -1 para negativo")
                              leia (sinal)
                              enquanto (sinal <> 1) e (sinal <> -1) faca
                                 escreval("Digite 1 para começo positivo ou -1 para negativo")
                                 leia (sinal)
                              fimenquanto
                              escreval("Qual o primeiro termo da sequência?")
                              leia(valor)

                              escreval("Qual a razão da sequência")
                              leia(valor2)

                              escreval("Quantos termos tem a sequência?")
                              leia(termo)
                              enquanto termo <= 1 faca
                                 escreval("Quantos termos tem a sequência? (apenas números positivos maiores que 1)")
                                 leia(termo)
                              fimenquanto
                              para i de 1 até termo faça
                                 escreval(i, "º termo: ",valor * sinal)
                                 valor <- valor + valor2
                                 sinal <- sinal * (-1)
                              fimpara
                              escreval("Pressione enter para retornar ao menu principal")
                              leia(pause)
                              limpatela
                           senao
                              se (op=9) entao
                                 escreval("--- Sequência tribonacci ---")
                                 escreval("Pressione enter para retornar ao menu principal")
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
