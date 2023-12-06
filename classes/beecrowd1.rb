class Beecrowd1  #Para cada método, um exercício

    def hello_world 
        puts "Hello World!"
    end

    #Métodos de classe não tem o do
    #Definimos como argumento as variáveis para que então os testes modifiquem colocando um input com valores reais
    def extremely_basic(x, y)
        result = x + y

        puts "X = #{result}"
    end

    def area_of_a_circle(n)
        pi = 3.14159
        radius = n ** 2
        area = pi * radius
        
        puts "A=#{sprintf("%.4f", area)}"
    end

    def simple_sum(a, b)
        result = a + b
        puts "SOMA = #{result}"
    end

    def simple_product(a, b)
        result = a * b
        puts "PROD = #{result}"
    end
end


