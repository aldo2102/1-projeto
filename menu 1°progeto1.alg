Algoritmo "1° projeto"
//  
//  
Var
   // Seção de Declarações das variáveis
   n:inteiro
procedimento divisao () //1°questao
var
   N1, N2, cont:inteiro
   divi:real
inicio
   repita //repita caso entre um valor invalido
      cont <- 1
      escreval("informe dois numeros")
      leia(N1, N2)
      se (N1 <> 0) e (N2 <> 0)entao //se, para nao ter divisão por zero nem dados invalidos
         divi <- N1 / N2
         escreval(divi)
      senao
         escreval("numero invalido")
         cont <- cont - 1
      fimse
   ate(cont = 1)
fimprocedimento
procedimento faixaetaria() //2°questao
var
   NumPes,i, idade, sexF, sexM, idadeM, todaidade, idadeF:inteiro
   MedIdade, MedSexoM, MedSexoF:real
   sexo:caracter
inicio
   todaidade <- 0
   idadeM <- 0
   idadeF <- 0
   sexM <- 0
   sexF <- 0
   escreval("informe quantidades de pessoas ")
   leia(NumPes)
   se(NumPes >0)entao//se, para bloquear numero negativo no numero de pessoas
      repita
         i <- i +1
         escreval("informe a idade da", i, "° pessoa")
         leia(idade)
         se(idade >0)entao//se, para bloquear numero negativo na idade
            escreval("informe sexo da", i, "° pessoa. m = masculino f = feminino")
            leia(sexo)
            todaidade <- todaidade + idade//guardar todas as idades
            MedIdade <- todaidade / NumPes
            se(sexo = "m")entao
               idadeM <- idadeM + idade //guardar todas as idades masculino
               sexM <- sexM +1
               MedSexoM <- idadeM / SexM
            senao
               se(sexo = "f")entao
                  idadeF <- idadeF + idade//guardar todas as idades feminino
                  sexF <- sexF +1
                  MedSexoF <- idadeF / SexF
               senao
                  escreval("dado invalido")
                  i <- i - 1
               fimse
            fimse
         senao
            escreval("dadosinvalidos")
            i <- i - 1
         fimse
      ate(i = NumPes)
      escreval("media de idade:", MedIdade)
      escreval( " media de sexo feminino", MedSexoF)
      escreval(" media do sexo masculino", MedSexoM )

   senao
      escreval("numero de pessoas invalido")
   fimse
fimprocedimento
procedimento Nprimos()//3°questao
var
   N1, N, divi, cont, Nprimo, Ncont, soma:inteiro
inicio
   escreval("informe um numero")
   leia(N1)

   divi <- 1
   cont <- 0
   Ncont <- 0
   N <- 1
   se(N1 <> 0)entao
   enquanto (N <= N1) faca //enquanto, para os numeros primos ir ate o numero informado

      repita//repita, para verificar quanto numeros N é divisivel
         se(N mod divi = 0)entao //se, para verificar quais numeros sao primos
            cont <- cont + 1
         fimse
         divi <- divi + 1
      ate(divi > N)
      se(cont = 2)entao
         Ncont <- Ncont + 1
         escreval(N)
         soma <- soma + N

      fimse

      divi <- 1
      N <- N + 1
      cont <- 0

   fimenquanto
   senao
   escreval("dado invalido")
   fimse
   escreval(soma)
fimprocedimento
procedimento Medi4()//4° questao
var
   maior, menor, numele, N, i, soma, cont:inteiro
   media:real
inicio
   escreval("informe o numero de elementos")
   leia(numele)
   se(numele >0)entao//se,para bloquear numero de elementos negativos
      escreval("informe o 1° elemento")
      leia(N)
      maior <- N
      menor <- N
      soma <- N
      cont <- 1
      i <- 1
      repita
         se(numele > 1)entao// se, para verificar se tem mais de 1 elemento
            i <- i + 1
            escreval("informe o", i, "° elemento")
            leia(N)
         fimse
         cont <- cont + 1
         soma <- soma + N

         se(N > maior)entao//se, para verificar o numero maior
            maior <- N
         senao
            se(N < menor)entao//se, para verificar o numero menor
               menor <- N
            fimse
         fimse
      ate(i = numele)
      media <- soma / cont
      escreval("menor numero:", menor, " maior numero", maior, " media dos numeros", media)
   senao
      escreval("numero de elementos invalidos")
   fimse
fimprocedimento
procedimento codigomorse()//5questao
var
   N, Numalg, cont:inteiro
   morse:caractere
inicio
   escreval ("informe o numero de algarismos")
   leia(Numalg)
   se(Numalg > 0)entao// se, para bloquear numero de algarismos negativo
      repita // repita, para informar todos os algarismos
         cont <- cont + 1
         escreval("informe o", cont, "° algarismo")
         leia(n)
         escolha(N)
         caso 1
            morse <- (morse + ".----/")
         caso 2
            morse <- (morse + "..---/")
         caso 3
            morse <- (morse + "...--/")
         caso 4
            morse <- (morse + "....-/")
         caso 5
            morse <- (morse + "...../")
         caso 6
            morse <- (morse + "-..../")
         caso 7
            morse <- (morse + "--.../")
         caso 8
            morse <- (morse + "---../")
         caso 9
            morse <- (morse + "----./")
         caso 0
            morse <- (morse + "-----/")
         outrocaso
            escreval("dado invalido")
            cont <- cont -1
         fimescolha
      ate(cont = Numalg)
      escreval(morse)
   senao
      escreval("numero de algarismo invalido")
   fimse
fimprocedimento
procedimento basenumerica()//6° questao
var
   N, restodiv,  bi, nele, i, cont, ib, ndigitos, valor:inteiro
   decimal,  soma:real
   basen, binario, null:caracter
inicio
   escreval("informe o numero de elementos ")
   leia(nele)
   se(nele > 0)entao//se, para bloquear numero de elementos zero ou negativo
      repita //repita, para informar todos os elementos
         i <- i +1
         escreval("escreva o" , i, "° elemento")
         leia(N)
         valor <- N
         se(N > 0 ) entao//se, para bloquear numero negativo nos elementos
            escreval("informe se esse numero é decimal ou binario")
            leia(basen)
            se(basen = "decimal")entao// se, para ver se é decimal
               repita//repita, para midar de base decimal para binario
                  restodiv <- (N mod 2)
                  escolha(restodiv)
                  caso 0
                     binario <- ("0" + binario)
                  caso 1
                     binario <- ("1" + binario)
                  fimescolha
                  N <- (N div 2)
               ate(N <= 0)
               escreval(valor, "em binario=", binario)
               binario <- null
            senao
               se(basen = "binario") entao//se, para ver se é binario
                  escreval("numero de digitos ")
                  leia(ndigitos)
                  se(ndigitos > 0)entao//se, para bloquiar zero e negativo em numero de digitos
                     ib <- ndigitos
                     repita //repita, para informar todos os digitos
                        ib <- ib-1
                        cont <- cont + 1
                        escreval("digite o ", cont, "° digito" )
                        leia(N)
                        se(N = 1)entao//se, para registrar so os numeros validos de um binario
                           decimal <- (N * (2 ^ ib))
                           soma <- soma + decimal
                        senao
                           se(N > 1) entao
                              escreval ("dado invalido")
                              ib <- ib + 1
                              cont <- cont - 1
                           fimse
                        fimse
                     ate(ib = 0)
                     cont <- 0
                         escreval(valor, "em decimal=", soma)
                         soma <- 0
                  senao
                     escreval("numero de digitos invalido")
                     i <- i -1
                  fimse
               senao
                  escreval("dados invalidos")
                  i <- i - 1
               fimse
            fimse
         senao
            i <- i - 1
            escreval("escreva novamente")
         fimse
      ate (i = nele)
      senao
           escreval("numero de elementos invalidos")
   fimse
fimprocedimento
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   repita
      escreval("escolha opsao de 1 a 7")
      escreval("1 para divisao")
      escreval("2 para faixaetaria")
      escreval("3 para numero primo")
      escreval("4 para media")
      escreval("5 para codigo morse")
      escreval("6 para decimal e binario")
      escreval("7 para sair do menu")
      leia(n)
      escolha(n)
      caso 1
      limpatela
         divisao()
      caso 2
      limpatela
         faixaetaria()
      caso 3
      limpatela
         Nprimos()
      caso 4
      limpatela
         Medi4()
      caso 5
      limpatela
         codigomorse()
      caso 6
      limpatela
         basenumerica()
      caso 7
      limpatela
         escreval ("volte sempre")
      outrocaso
         escreval("dado invalido ")
      fimescolha
   ate(n = 7)

Fimalgoritmo