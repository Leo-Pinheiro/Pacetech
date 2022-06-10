package projetosemana6;

import java.util.Scanner;

public class ProjetoSemana6 {

    public static void main(String[] args) {
        float temperatura = 0.0f, temperaturaFormatada = 0.0f, cotacaoDolar = 0.0f, moeda = 0.0f, moedaFormatada = 0.0f;
        int opcao, opcaoTemperatura, opcaoMoeda;

        Scanner leitorScanner = new Scanner(System.in);
        do {
            System.out.println("1- Conversor de temperatura");
            System.out.println("2- Conversor de moeda");
            System.out.println("3- Sair");
            System.out.println("Informe a opção desejada");
            opcao = leitorScanner.nextInt();

            if (opcao == 1) {
                do {
                    System.out.println("1- Converter celsius para fahrenheit");
                    System.out.println("2- Converter fahrenheit para celsius");
                    System.out.println("3- Voltar");
                    System.out.println("Informe a opção desejada");
                    opcaoTemperatura = leitorScanner.nextInt();
                    if (opcaoTemperatura == 1) {
                        System.out.print("Informe a temperatura em celsius: ");
                        temperatura = leitorScanner.nextFloat();
                        System.out.println("");
                        temperaturaFormatada = (temperatura * 1.8f) + 32;
                        System.out.println("A temperatura em celsius: " + String.format("%.2f", temperatura) + "°C");
                        System.out.println("A temperatura em fahrenheit: " + String.format("%.2f", temperaturaFormatada) + "°F");
                        System.out.println("-------------------------------------------------------");
                    } else if (opcaoTemperatura == 2) {
                        System.out.print("Informe a temperatura em fahrenheit: ");
                        temperatura = leitorScanner.nextFloat();
                        System.out.println("");
                        temperaturaFormatada = (temperatura - 32) / 1.8f;
                        System.out.println("A temperatura em fahrenheit: " + String.format("%.2f", temperatura) + "°F");
                        System.out.println("A temperatura em celsius: " + String.format("%.2f", temperaturaFormatada) + "°C");
                        System.out.println("-------------------------------------------------------");
                    }
                } while (opcaoTemperatura == 1 || opcaoTemperatura == 2);

            }
            if (opcao == 2) {
                do {
                    System.out.println("Informe a cotação do dólar");
                    cotacaoDolar = leitorScanner.nextFloat();
                    System.out.println("");
                    System.out.println("1- Dólar para real");
                    System.out.println("2- Real para dólar");
                    System.out.println("3- Voltar");
                    opcaoMoeda = leitorScanner.nextInt();
                    if (opcaoMoeda == 1) {
                        System.out.print("Informe a quantia de dólares: $ ");
                        moeda = leitorScanner.nextFloat();
                        System.out.println("");
                        moedaFormatada = moeda * cotacaoDolar;
                        System.out.println("A quantia em dólar é: $" + String.format("%.2f", moeda));
                        System.out.println("A quantia em real é: R$" + String.format("%.2f", moedaFormatada));
                        System.out.println("--------------------------------------------------");

                    } else if (opcaoMoeda == 2) {
                        System.out.print("Informe a quantia de reais: R$ ");
                        moeda = leitorScanner.nextFloat();
                        System.out.println("");
                        moedaFormatada = moeda / cotacaoDolar;
                        System.out.println("A quantia em real é: R$" + String.format("%.2f", moeda));
                        System.out.println("A quantia em dólar é: $" + String.format("%.2f", moedaFormatada));
                        System.out.println("--------------------------------------------------");

                    }

                } while (opcaoMoeda == 1 || opcaoMoeda == 2);

            }

        } while (opcao == 1 || opcao == 2);
    }
}
