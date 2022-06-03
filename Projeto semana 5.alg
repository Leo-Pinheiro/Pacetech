algoritmo "Projeto Semana 5"
// Função : Converter temperaturas e armazenar seus devidos horários
// Autor : Leonardo Luiz Moreira Pinheiro
// Data : 02/06/2022
// Seção de Declarações
var
temperaturas, horarios : vetor[1..4] de real
opcao : literal
i, j : inteiro
aux1, aux2: real

procedimento menu()
inicio
escreval("1- Converter celsius para fahrenheit")
escreval("2- Converter fahrenheit para celsius")
escreval("3- Sair")
escreval("Informe a escolha desejada:")
leia(opcao)
limpatela
fimprocedimento

procedimento armazenar()
inicio
para i de 1 ate 4 faca
   escreva("Informe a temperatura:", i, ":")
   leia(temperaturas[i])

   escreval("Informe o horário correspondente:")
   leia(horarios[i])
fimpara
fimprocedimento

procedimento metodoBolha()
inicio
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se temperaturas[j] > temperaturas[i] entao
         aux1 <- temperaturas[i]
         aux2 <- horarios[i]
         temperaturas[i] <- temperaturas[j]
         horarios[i] <- horarios[j]
         temperaturas[j] <- aux1
         horarios[j] <- aux2
      fimse
   fimpara
fimpara
fimprocedimento
procedimento converter()
inicio
metodoBolha()
se opcao = "1" entao
   para i de 1 ate 4 faca
      escreval("Temperatura", temperaturas[i],"°C regitrada às", horarios[i],"h corresponde a", ((temperaturas[i] * 1.8) + 32):4:2,"°F")
   fimpara
senao
   se opcao = "2" entao
      para i de 1 ate 4 faca
         escreval("Temperatura", temperaturas[i],"°C registrada às", horarios[i],"h corresponde a", ((temperaturas[i] - 32) / 1.8):4:2,"°C")
      fimpara
   fimse
fimse

fimprocedimento

inicio

repita
   menu()
   escolha opcao

   caso "1"
      armazenar()
      converter()

   caso "2"
      armazenar()
      converter()
   caso "3"
   outrocaso
      escreval("Opção inválida. Tente novamente")
   fimescolha
ate opcao = "3"
fimalgoritmo

