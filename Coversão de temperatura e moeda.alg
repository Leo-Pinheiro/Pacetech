algoritmo "Projeto Semana 4"
// Fun��o : Converter temperatura e moeda
// Autor : Leonardo Luiz Moreira Pinheiro
// Data : 26/05/2022
var
temperatura, temperaturaFormatada, cotacaoDolar, moeda, moedaFormatada : real
opcao, opcaoTemperatura, opcaoMoeda : literal

inicio


repita
   escreval("1 - Conversor de temperatura")
   escreval("2 - Conversor de moeda")
   escreval("3 - Sair")
   escreval("Informe a op��o desejada")
   leia(opcao)
   enquanto (opcao <> "1") e (opcao <> "2") e (opcao <> "3") faca
      escreval("Informe uma op��o v�lida")
      leia(opcao)
   fimenquanto
   limpatela
   se (opcao = "1") entao
      escreval("1 - Fazer convers�o de celsius para fahrenheit")
      escreval("2 - Fazer convers�o de fahrenheit para celsius")
      escreval("Informe convers�o desejada")
      leia(opcaoTemperatura)
      enquanto (opcaoTemperatura <> "1") e (opcaoTemperatura <> "2") faca
         escreval("")
         escreval("Informe uma op��o v�lida")
         leia(opcaoTemperatura)
      fimenquanto
      limpatela
      se opcaoTemperatura = "1" entao
         escreval("Informe a temperatura desejada em fahrenheit")
         leia(temperatura)
         escreval("")
         temperaturaFormatada <-  (temperatura - 32) / 1.8
         escreval("A temperatura em fahrenheit �", temperatura, "F�")
         escreval("A temperatura em celsius �", temperaturaFormatada:4:2, "C�")
         escreval("------------------------------------------------------")
      senao
         escreval("Informe a temperatura desejada")
         leia(temperatura)
         escreval("")
         temperaturaFormatada <- (temperatura * 1.8) + 32
         escreval("A temperatura em celsius �", temperatura, "C�")
         escreval("A temperatura em fahrenheit �", temperaturaFormatada:4:2, "F�")
         escreval("------------------------------------------------------------")
      fimse
   fimse

   se (opcao = "2") entao
      escreva("Informe a cota��o do d�lar: ")
      leia(cotacaoDolar)
      limpatela
      
      escreval("1 - Fazer convers�o de d�lar pra real")
      escreval("2 - Fazer convers�o de real pra d�lar")
      escreval("Informe a convers�o desejada")
      leia(opcaoMoeda)
      enquanto (opcaoMoeda <> "1") e (opcaoMoeda <> "2") faca
         escreval("Informe uma op��o v�lida")
         leia(opcaoMoeda)
      fimenquanto
      limpatela
      se (opcaoMoeda = "1") entao
         escreval("Informe a quantia de d�lar")
         leia(moeda)
         moedaFormatada <- moeda / cotacaoDolar
         escreval("A quantia em d�lar �", "$", moeda)
         escreval("Dinheiro em Real:", "R$", moedaFormatada)
         escreval("-----------------------------------------------")
      senao
         escreval("Informe a quantia de real")
         leia(moeda)
         moedaFormatada <- moeda * cotacaoDolar
         escreval("A quantia em real �", "R$", moeda)
         escreval("Dinheiro em d�lar:", "$", moedaFormatada)
         escreval("---------------------------------------------")
      fimse
   fimse
ate opcao = "3"
limpatela
fimalgoritmo
