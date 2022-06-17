package projetosemana7;

public class ProjetoSemana7 {

    public static void main(String[] args) {
        
      Empregado leonardo = new Empregado("Leonardo Luiz", "Moreira Pinheiro", 2000);
        System.out.println("Salário anual de: " + leonardo.getPrimeiroNome() +
        ": R$" + String.format("%.2f",leonardo.getSalarioAnual()));
      
        Empregado bruno = new Empregado("Bruno", "Silva", 4000);
        System.out.println("Salario anual de " + bruno.getPrimeiroNome() + 
                ": R$" + String.format("%.2f",bruno.getSalarioAnual()));
        
        System.out.println();
        
        leonardo.Aumento();
        bruno.Aumento();
        
        System.out.println();
        
        System.out.println("Salario anual de " + leonardo.getPrimeiroNome() +
                " com aumento: R$" + String.format("%.2f",leonardo.getSalarioAnual()));
        System.out.println("Salario anual de " + bruno.getPrimeiroNome() +
                " com aumento: R$" + String.format("%.2f",bruno.getSalarioAnual()));
        
    }
    
}
    
    
    

