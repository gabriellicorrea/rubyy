#Dada a classe Pessoa, que possui os atributos: String
#nome, String sexo, int idade, boolean vegetariana. Faça agora uma
#classe Churrasco que possua:
#Atributos: qtdCarne(double);
#Método: verificarConsumo(): Recebe via parâmetro uma Pessoa, e com
#isto define a consumação média de carne(quantidade de carne consu-
#mida), pessoas de 0 a 3 anos não consomem, vegetarianos também não.
#Pessoas de 4 a 12 anos consomem 1 kilo de carne e de 13 anos em di-
#ante 2 kilos de carne.

class Pessoa
    def initialize(nome, sexo, idade, vegetariana)
        @nome = nome
        @sexo = sexo
        @idade = idade
        @vegetariana = vegetariana
    end

    def verificarConsumo
        puts "Nome = #{@nome}"
        puts "Sexo = #{@sexo}"
        puts "Idade = #{@idade}"
        puts "Vegetariano(a) = #{@vegetariana}"
        
        if(@idade <= 3) or (@vegetariana === "true")
            puts "Não consome carne"
            puts " " 
        elsif (@idade <= 12)
            puts "Consome 1 kilo de carne"
            puts " " 
        else
            puts "Consome 2 kilos de carne"
            puts " " 
        end
    end 
end

pessoa = Pessoa.new("Gabrielli", "Feminino", 23, "true")
pessoa1 = Pessoa.new("Kaue", "Masculino", 24, "false")
pessoa2 = Pessoa.new("Beatriz", "Feminino", 8, "false")

pessoa.verificarConsumo
pessoa1.verificarConsumo
pessoa2.verificarConsumo

