algoritmo "Projeto Semana 4"
// Função : Converter temperatura e moeda
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
   escreval("Informe a opção desejada")
   leia(opcao)
   enquanto (opcao <> "1") e (opcao <> "2") e (opcao <> "3") faca
      escreval("Informe uma opção válida")
      leia(opcao)
   fimenquanto
   limpatela
   se (opcao = "1") entao
      escreval("1 - Fazer conversão de celsius para fahrenheit")
      escreval("2 - Fazer conversão de fahrenheit para celsius")
      escreval("Informe conversão desejada")
      leia(opcaoTemperatura)
      enquanto (opcaoTemperatura <> "1") e (opcaoTemperatura <> "2") faca
         escreval("")
         escreval("Informe uma opção válida")
         leia(opcaoTemperatura)
      fimenquanto
      limpatela
      se opcaoTemperatura = "1" entao
         escreval("Informe a temperatura desejada em fahrenheit")
         leia(temperatura)
         escreval("")
         temperaturaFormatada <-  (temperatura - 32) / 1.8
         escreval("A temperatura em fahrenheit é", temperatura, "F°")
         escreval("A temperatura em celsius é", temperaturaFormatada:4:2, "C°")
         escreval("------------------------------------------------------")
      senao
         escreval("Informe a temperatura desejada")
         leia(temperatura)
         escreval("")
         temperaturaFormatada <- (temperatura * 1.8) + 32
         escreval("A temperatura em celsius é", temperatura, "C°")
         escreval("A temperatura em fahrenheit é", temperaturaFormatada:4:2, "F°")
         escreval("------------------------------------------------------------")
      fimse
   fimse

   se (opcao = "2") entao
      escreva("Informe a cotação do dólar: ")
      leia(cotacaoDolar)
      limpatela
      
      escreval("1 - Fazer conversão de dólar pra real")
      escreval("2 - Fazer conversão de real pra dólar")
      escreval("Informe a conversão desejada")
      leia(opcaoMoeda)
      enquanto (opcaoMoeda <> "1") e (opcaoMoeda <> "2") faca
         escreval("Informe uma opção válida")
         leia(opcaoMoeda)
      fimenquanto
      limpatela
      se (opcaoMoeda = "1") entao
         escreval("Informe a quantia de dólar")
         leia(moeda)
         moedaFormatada <- moeda / cotacaoDolar
         escreval("A quantia em dólar é", "$", moeda)
         escreval("Dinheiro em Real:", "R$", moedaFormatada)
         escreval("-----------------------------------------------")
      senao
         escreval("Informe a quantia de real")
         leia(moeda)
         moedaFormatada <- moeda * cotacaoDolar
         escreval("A quantia em real é", "R$", moeda)
         escreval("Dinheiro em dólar:", "$", moedaFormatada)
         escreval("---------------------------------------------")
      fimse
   fimse
ate opcao = "3"
limpatela
fimalgoritmo
