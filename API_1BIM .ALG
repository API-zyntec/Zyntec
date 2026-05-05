Algoritmo "ZynTec_API_1?Bimestre"
// Disciplina   : Algoritmos
// Professor   : Fabiano Sabha Walczak
Var
   op, i, j, pause, termo, sinal: inteiro
   valor, valor2, valor_aux : real

Inicio

   Enquanto op <> 9 faca
      limpatela
      escreval("--- Menu principal da calculadora ---")
      escreval("")
      escreval("Qual das opções abaixo deseja? ")
      escreval("0- Sequência de Fibonacci")
      escreval("1- Números triângulares")
      escreval("2- Sequência de números primos")
      escreval("3- Sequência fatorial(Em Breve)")
      escreval("4- Sequência de quadrados perfeitos")
      escreval("5- Sequência de cubos")
      escreval("6- Sequência geométrica(Em Breve)")
      escreval("7- Sequência alternada")
      escreval("8- Sequência tribonacci(Em Breve)")
      escreval("9- Encerrar")
      escreval("")
      leia (op)
      limpatela
      Escolha op
      
      Caso 9
         interrompa
         
      Caso 0
         limpatela
         escreval ("--- Sequência de Fibonacci ---")
         escreval ("Quanto termos deseja na sequencia. Tem que ser maior doque 3")
         leia (termo)//define quantia de termos

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

      Caso 1
         escreval("Números triângulares")
         i <- 0
         valor2 <- 1
         escreval("insira o termo da sequencia que voce quer chegar")
         leia (termo)
         limpatela
         para i de 1 at� termo fa�a  //enquanto a posição atual da repetição não alcançar o valor iserido pelo usuário, continua o calculo

            valor_aux <- (valor2 * (valor2+1)/2)  //formula dos numeros triangulares

            escreval (i,"° termo:", valor_aux) //exibição de resultado

            valor2 <- valor2 + 1 //adiciona 1

            i<- i + 1

         fimpara
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 2
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

      Caso 3
         escreval("--- Sequência fatorial ---")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 4
         escreval("--- Sequência de quadrados perfeitos ---")

         //Inicio do laço de repetição para validação da Sequencia
         repita
            escreval("Informe qual a quantia de termos que você quer da sequência:")
            leia(termo)
         //filtro de erro
            se (termo) <= 1 ent�o
               escreval("A quantia de termos deve ser maior que 1!!")
            fimse
         ate (termo > 1) então
         //sequencia
         para i de 1 at� termo fa�a
            valor <- (i ^ 2)
            escreval(i, "º termo: ", valor)
         fimpara

         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 5
         escreval ("--- Sequência de cubos ---")
         escreval("Insira a quantidade de termos que vocÃª deseja")
         leia(termo)

         enquanto (termo <= 1) faca //garante apenas positivos +1
            limpatela
            escreval("O termo precisa ser maior que 1")
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

      Caso 6
         escreval("--- Sequência geometrica ---")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      Caso 7
         escreval("--- Sequência alternada ---")
         escreval("Digite 1 para começo positivo ou -1 para negativo")
         leia (sinal) //define inicio
         enquanto (sinal <> 1) e (sinal <> -1) faca  //garante 1 e -1
            escreval("Digite 1 para começo positivo ou -1 para negativo")
            leia (sinal)
         fimenquanto
         escreval("Qual o primeiro termo da sequência?")
         leia(valor)

         escreval("Qual a razão da sequência")
         leia(valor2)

         escreval("Quantos termos tem a sequência?")
         leia(termo)
         enquanto termo <= 1 faca //filtro de erro (+ que 1)
            escreval("Quantos termos tem a sequência? (apenas números positivos maiores que 1)")
            leia(termo)
         fimenquanto
         para i de 1 at� termo fa�a   //estrutura
            escreval(i, "º termo: ",valor * sinal)
            valor <- valor + valor2
            sinal <- sinal * (-1)
         fimpara
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela

      outrocaso
         escreval("--- Sequência tribonacci ---")
         escreval("Pressione enter para retornar ao menu principal")
         leia(pause)
         limpatela
      fimescolha
   fimenquanto
Fimalgoritmo
