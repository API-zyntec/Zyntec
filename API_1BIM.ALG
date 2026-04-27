Algoritmo "ZynTec_API_1?Bimestre"
// Disciplina   : Algoritmo
// Professor   : Sabha
Var
   op, aux, i, j, termo1, termo2, termo_aux, pause, termo, cubo_aux, num1, cont : inteiro // Adicionei variÃ¡veis de controle de exibiÃ§Ã£o.
   cubo : real
   
   //variaveis para Sequência de Quadrados Perfeitos
    ultimo_termo_quadrado, contador: inteiro
    quadrado : real
Inicio
   op <-1

   enquanto op <> 0 faca
      limpatela
      escreval("Menu principal da calculadora")
      escreval("")
      escreval("Qual das opcoes abaixo deseja? ")
      escreval("1- Sequencia de fibonacci")
      escreval("2- Numeros triangulares")
      escreval("3- Sequencia de nÃºmeros primos")
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
            escreval ("--- SEQUÃŠNCIA DE FIBONACCI ---")
            escreval ("Quanto termos deseja na sequencia. Tem que ser maior doque 3")
            leia (termo)
            
            enquanto termo < 3 faca  //confirma se Ã© maior que 3
             limpatela
             escreval("O termo precisa maior que 3")
             leia(termo)
             se termo > 47 entao //limite 32bits
               limpatela
               escreval("O limite de 32bits do VisualG nos impede do termo ser maior que 47")
               escreval("Por favor insira novamente um nÃºmero menor que 48")
               leia(termo)
            fimse
            fimenquanto
            
            limpatela
            termo1 <- 0
            termo2 <- 1
            escreval (" 1Âº termo: ", termo1)
            escreval (" 2Âº termo: ", termo2)
            
            para i de 3 ate termo faca //LÃ³gica do nÃºmero do termo
               termo_aux <- termo1 + termo2
               escreval (i, "Âº termo: ", termo_aux)
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
               escreval("Sequencia de numeros primos")
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
               escreval("")
               escreval("o número ", num1, " é primo")
            senao
               escreval("")
               escreval("o número ", num1, " não é primo")
            fimse

               escreval("")
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
                     escreval("--- Sequencia de quadrados perfeitos ---")

                     //Inicio do laço de repetição para validação da Sequencia
                     repita
                       escreval("informe qual o ultimo termo que você quer da Sequência de Quadrados Perfeitos:")
                       leia(ultimo_termo_quadrado)
                  
                           se (ultimo_termo_quadrado) < 1 então
                              escreval("!!O ultimo termo deve ser maior que 1!!")
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
                     
                        escreval("Insira a quantidade de termos que vocÃª deseja")
                        leia(cubo_aux)
                        
                        enquanto (cubo_aux <= 0) faca //garante apenas positivos
                           limpatela
                           escreval("O termo precisa ser maior que 0")
                           leia(cubo_aux)
                        fimenquanto
                        
                        cubo <- 0 //inicia a sequencia
                           limpatela
                           escreval ("--- SequÃªncia de cubos ---")

                           para j de 1 ate cubo_aux faca
                              cubo <- (j ^ 3)
                              escreval(j, "Âº termo: " ,cubo)
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
