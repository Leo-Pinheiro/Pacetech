package projetosemana7;

public class Empregado {
   private String primeiroNome;
   private String sobrenome;
   private float salarioMensal;

    public Empregado(String primeiroNome, String sobrenome, float salarioMensal) {
        this.primeiroNome = primeiroNome;
        this.sobrenome = sobrenome;
        this.salarioMensal = salarioMensal;
    }
    public void Aumento(){
        salarioMensal = salarioMensal * 1.1f;
    }
            
    public float getSalarioAnual(){
      return salarioMensal * 12;
    }
    
    public String getPrimeiroNome() {
        return primeiroNome;
    }

    public void setPrimeiroNome(String primeiroNome) {
        this.primeiroNome = primeiroNome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public float getSalarioMensal() {
        return salarioMensal;
    }

    public void setSalarioMensal(float salarioMensal) {
        if (salarioMensal < 0) {
           this.salarioMensal = 0.0f;
        } else
          this.salarioMensal = salarioMensal;
    }
  
}
