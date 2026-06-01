Algoritmo "ZynTec_API_1?Bimestre"
// Disciplina   : Algoritmos
// Professor   : Fabiano Sabha Walczak
Var
   op, i, j, pause, termo, sinal, resp: inteiro
   valor, valor2, valor3, valor_aux : real

Inicio
   Mudacor("verde", "frente")
   Enquanto (op <> 9) faca
      limpatela
      escreval("--- Menu principal da calculadora ---")
      escreval("")
      escreval("Qual das opções abaixo deseja? ")
      escreval("0- Sequência de Fibonacci")
      escreval("1- Números triângulares")
      escreval("2- Sequência de números primos")
      escreval("3- Sequência fatorial")
      escreval("4- Sequência de quadrados perfeitos")
      escreval("5- Sequência de cubos")
      escreval("6- Sequência geométrica")
      escreval("7- Sequência alternada")
      escreval("8- Sequência tribonacci")
      escreval("9- Encerrar o programa")
      escreval("")
      leia (op)
      limpatela
      Escolha op

      Caso 0
         limpatela
         escreval ("--- Sequência de Fibonacci ---")
         escreval ("Quantos termos deseja na sequência? Tem que ser maior do que 3")
         leia (termo)//define quantia de termos

         enquanto (termo < 3) ou (termo > 47) faca  //confirma se o termo é maior que 3 e menor que 47
            limpatela
            se termo > 47 entao //limite 32bits
               limpatela
               escreval("O limite de 32bits do VisualG nos impede do termo ser maior que 47")
               escreval("Por favor insira novamente um número menor que 48")
               leia(termo)
            senao
               escreval("O termo precisa ser maior que 3")
               leia(termo)
            fimse
         fimenquanto

         limpatela
         valor <- 0
         valor2 <- 1
         escreval (" 1º termo: ", valor)
         escreval (" 2º termo: ", valor2)

         para i de 3 ate termo faca //Lógica do número do termo
            valor_aux <- valor + valor2
            escreval (i,"º termo: ", valor_aux)
            valor <- valor2
            valor2 <- valor_aux
         fimpara

         escreval ("------------------------------")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela//fim fibonacci

      Caso 1

        escreval("Números triangulares")
         i <- 0
         valor2 <- 1
         escreval("Quantos termos deseja na sequência?")
         leia (termo)
         enquanto termo <= 0 faca
            escreval("Digite um número maior que 0: ")
            leia(termo)
         fimenquanto
         limpatela

         para i de 1 até termo faça  //enquanto a posiÃ§Ã£o atual da repetiÃ§Ã£o nÃ£o alcanÃ§ar o valor iserido pelo usuÃ¡rio, continua o calculo

            valor_aux <- (valor2 * (valor2+1)/2)  //formula dos numeros triangulares

            escreval (i,"° termo:", valor_aux) //exibiÃ§Ã£o de resultado

            valor2 <- valor2 + 1 //adiciona 1

            i<- i + 1

         fimpara

         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 2

         escreval("--- Sequência de números primos ---")
         escreval("")
         escreval("Quantos termos da sequência você deseja?")
         leia(termo)

         enquanto termo <= 0 faca
            escreval("Digite um número maior que 0: ")
            leia(termo)
         fimenquanto

         escreval("Primeiros ", termo, " números primos:")
         valor <- 0   // contador de primos
         i <- 2       // primeiro número

         enquanto valor < termo faca
            // verifica se i é primo
            j <- 2
            enquanto j <= i - 1 faca
               se (i % j = 0) entao
                  interrompa   // achou divisor logo não é primo
               fimse
               j <- j + 1
            fimenquanto

            se j > i - 1 entao
               valor <- valor + 1
               escreval(valor, "º termo: ", i)
            fimse

            i <- i + 1
         fimenquanto

         escreval("")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 3
         escreval("--- Sequência fatorial ---")
         escreval("Quantos termos deseja na sequência?")
         leia (termo)
         enquanto termo <= 0 faca
            escreval("Digite um número maior que 0: ")
            leia(termo)
         fimenquanto
         
         i <- 1
         valor <- 1

         para i de 1 ate termo faca
         valor <- (valor * 1 * i)
         escreval (i,"° termo:", valor)
         fimpara


         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 4

         escreval("--- Sequência de quadrados perfeitos ---")

         escreval("Quantos termos deseja na sequência?")
         leia (termo)
         enquanto termo <= 0 faca
            escreval("Digite um número maior que 0: ")
            leia(termo)
         fimenquanto
         //sequencia
         para i de 1 até termo faça
            valor <- (i ^ 2)
            escreval(i, "º termo: ", valor)
         fimpara

         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 5
         escreval ("--- Sequência de cubos ---")
         escreval("Quantos termos deseja na sequência?")
         leia(termo)

         enquanto (termo <= 1) faca //garante apenas positivos +1
            limpatela
            escreval("O termo precisa ser maior que 1: ")
            leia(termo)
         fimenquanto

         valor <- 0 //inicia a sequencia
         limpatela
         escreval ("--- Sequência de cubos ---")

         para i de 1 ate termo faca
            valor <- (i ^ 3)
            escreval(i, "º termo: " ,valor)
         fimpara

         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 6
         escreval("--- Sequência geométrica ---")
         escreval("Digite qual das classificações quer?")
         escreval("1-Crescente, 2-Decrescente, 3-Oscilante: ")
         leia(resp)
         enquanto (resp<1) ou (resp>3) faca
                  limpatela
                  escreval("Por favor, digite:")
                  escreval ("1 para crescente, 2 para descrescente ou 3 para oscilante: ")
                  leia(resp)
         fimenquanto
         escreval("Digite o primeiro termo da sequência (Deve ser maior que 0): ")
         leia(valor)
         enquanto (valor<=0) faca
                  escreval("Por favor, digite um valor maior que 0: ")
                  leia(valor)
         fimenquanto
         escreval("Digite a razão da sequência, deve ser maior que 0")
         escreval("Caso queira constante, o valor é 1")
         leia(valor2)
         enquanto (valor2<=0) faca
                  escreval("Por favor, digite um valor maior que 0: ")
                  leia(valor2)
         fimenquanto
         escreval("Terá quantos termos? ")
         leia(termo)
         enquanto (termo<=0) faca
                  escreval("Por favor, digite um valor maior que 0: ")
                  leia(termo)
         fimenquanto

         escolha resp
                 Caso 1
                      limpatela
                      para i de 1 ate termo faca
                           escreval(i,"° termo: ",valor)
                           valor<-valor*valor2
                      fimpara
                 Caso 2
                      limpatela
                      valor<-valor*(-1)
                      para i de 1 ate termo faca
                           escreval(i,"° termo: ",valor)
                           valor<-valor*valor2
                      fimpara
                 Caso 3
                      limpatela
                      valor2<-valor2*(-1)
                      para i de 1 ate termo faca
                           escreval(i,"° termo: ",valor)
                           valor<-valor*valor2
                      fimpara
         fimescolha
         escreval("")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 7
         escreval("--- Sequência alternada ---")
         escreval("Digite 1 para começo positivo ou -1 para negativo: ")
         leia (sinal) //define inicio
         enquanto (sinal <> 1) e (sinal <> -1) faca  //garante 1 e -1
            escreval("Digite 1 para começo positivo ou -1 para negativo: ")
            leia (sinal)
         fimenquanto
         escreval("Qual o primeiro termo da sequência?(não coloque números negativos ")
         leia(valor)

         escreval("Qual a razão da sequência? ")
         leia(valor2)

         escreval("Quantos termos tem a sequência? ")
         leia(termo)
         enquanto termo <= 1 faca //filtro de erro (+ que 1)
            escreval("Quantos termos tem a sequência? (apenas números positivos maiores que 1)")
            leia(termo)
         fimenquanto
         para i de 1 até termo faça   //estrutura
            escreval(i, "º termo: ",valor * sinal)
            valor <- valor + valor2
            sinal <- sinal * (-1)
         fimpara
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 8
         escreval("--- Sequência tribonacci ---")
         escreval ("Quanto termos deseja na sequência? Deve que ser maior do que 4 ")
         leia (termo)//define quantia de termos

         enquanto (termo < 4) ou (termo > 47) faca  //confirma se Ã© maior que 3
            limpatela
            se termo > 47 entao //limite 32bits
               limpatela
               escreval("O limite de 32bits do VisualG nos impede do termo ser maior que 47")
               escreval("Por favor insira novamente um número menor que 48")
               leia(termo)
            senao
               escreval("O termo precisa maior que 4")
               leia(termo)
            fimse
         fimenquanto

         limpatela
         valor <- 0
         valor2 <- 1
         valor3 <- 1
         escreval (" 1º termo: ", valor)
         escreval (" 2º termo: ", valor2)
         escreval (" 3º termo: ", valor3)

         para i de 4 ate termo faca //Lógica do número do termo
            valor_aux <- valor + valor2 + valor3
            escreval (i, "º termo: ", valor_aux)
            valor <- valor2
            valor2 <- valor3
            valor3 <- valor_aux
         fimpara

         escreval ("------------------------------")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela//fim Tribonacci

      Outrocaso
         Escreva("Saindo do programa")
      Fimescolha
   Fimenquanto
Fimalgoritmo
