Algoritmo "ZynTec_API_1?Bimestre"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
Var
   op, aux, i, j, f1, f2, f_aux, pause, termo, c_aux, num1, cont : inteiro // Adicionei variáveis de controle de exibição.
   resp : caractere //Auxilia no cálculo no próximo termo.
   cubo : real
   
   //variaveis para Sequência de Quadrados Perfeitos
    ultimo_termo_quadrado, contador: inteiro
    quadrado : real

    // vari�veis para sequ�ncia de tri�ngulos
    posi_atual, posi_final: inteiro
    n, resultado: real
    
Inicio
   op <-1
   termo <- 2
   resp <- "s"

   enquanto op <> 0 faca
      limpatela
      escreval("--- Menu principal da calculadora ---")
      escreval("")
      escreval("Qual das opções abaixo deseja? ")
      escreval("1- Sequência de Fibonacci")
      escreval("2- Números triângulares")
      escreval("3- Sequência de números primos")
      escreval("4- Sequência fatorial")
      escreval("5- Sequência de quadrados perfeitos")
      escreval("6- Sequência de cubos")
      escreval("7- Sequência geométrica")
      escreval("8- Sequência alternada")
      escreval("9- Sequência tribonacci")
      escreval("0- Encerrar")
      escreval("")
      leia (op)
      limpatela

      se (op=1) entao
         enquanto (resp = "s") ou (resp = "S") faca
            limpatela
            escreval ("--- Sequência de Fibonacci ---")

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
      
      //Sequ�ncia de n�meros tri�ngulares
         se (op=2) entao
            escreval("Números triângulares")
            posi_atual <- 0
            n <- 1

            escreval("insira a posi��o da sequencia que voce quer que chegue")

            leia (posi_final)

            enquanto posi_atual < posi_final fa�a   //enquanto a posi��o atual da repeti��o n�o alcan�ar o valor iserido pelo usu�rio, continua o calculo

                     resultado <- (n * (n+1)/2)  //formula dos numeros triangulares

                     escreval (posi_atual,"� termo:", resultado) //exibi��o de resultado

                     n<- n+1 //adiciona 1
                     
                     posi_atual<- posi_atual+1

            fimenquanto
            
            
            escreval("Aperte enter para retornar ao menu principal")
            leia(pause)
            limpatela
            
            
         senao
         
            se (op=3) entao
               escreval("--- Sequência de números primos ---")
               escreval("")
               escreval("Digite o número que deseja testar:")
               leia(num1)
               cont <- 0

               para i de 1 ate num1 faca
                  se (num1 % i = 0) entao
                     cont <- cont + 1
                  fimse
               fimpara

               se (cont = 2) entao
                  escreval("o número ", num1, " é primo")
                  escreval("")
                  senao
                       escreval("O número ", num1, " não é primo")
                       escreval("")
               fimse
               escreval("Aperte enter para retornar ao menu principal")
               leia(pause)
               limpatela
               
            senao
               se (op=4) entao
                  escreval("Sequência fatorial")
                  escreval("Aperte enter para retornar ao menu principal")
                  leia(pause)
                  limpatela

               senao
                  se (op=5) entao
                     escreval("--- Sequência de quadrados perfeitos ---")
                     escreval("")

                     //Inicio do laço de repetição para validação da Sequencia
                     repita
                       escreval("Informe qual o último termo que você quer da sequência:")
                       leia(ultimo_termo_quadrado)

                           se (ultimo_termo_quadrado) <= 1 então
                              escreval("O último termo deve ser maior que 1!!")
                           fimse
                     ate (ultimo_termo_quadrado > 1) então

                       para contador de 1 até ultimo_termo_quadrado faça
                         quadrado <- (contador ^ 2)
                         escreval(contador, "º termo: ", quadrado)
                       fimpara

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
                           escreval("Sequência geométrica")
                           escreval("Aperte enter para retornar ao menu principal")
                           leia(pause)
                           limpatela
                           
                        senao
                           se (op=8) entao
                              escreval("Sequência alternada")
                              escreval("Aperte enter para retornar ao menu principal")
                              leia(pause)
                              limpatela
                              
                           senao
                              se (op=9) entao
                                 escreval("Sequência tribonacci")
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
fimalgoritmo
