class Beecrowd1  #Para cada método, um exercício

    def helloWorld 
        puts "Hello World!"
    end

    #Métodos de classe não tem o do
    #Definimos como argumento as variáveis para que então os testes modifiquem colocando um input com valores reais
    def extremelyBasic(x, y)
        result = x + y

        puts "X = #{result}"
    end

    def areaOfACircle(n)
        pi = 3.14159
        radius = n ** 2
        area = pi * radius
        
        puts "A=#{sprintf("%.4f", area)}"
    end

    def simpleSum(a, b)
        result = a + b
        puts "SOMA = #{result}"
    end

    def simpleProduct(a, b)
        result = a * b
        puts "PROD = #{result}"
    end
end


