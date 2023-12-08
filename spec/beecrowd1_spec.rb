require "./lib/classes/beecrowd1"

RSpec.describe Beecrowd1 do

    describe'#hello_world' do
        it 'Executes a output with a string' do
            string = Beecrowd1.new
            resposta = capture_stdout do
                string.hello_world
            end
            saida_final = resposta.split("\n")

            expect(saida_final[0]).to eq("Hello World!") #Saída final tem [0] pois ela é se tronou um array depois da função split
        end
    end

    describe'#extremely_basic' do
        it 'calculates the sum of 10 and 9' do
            sum = Beecrowd1.new
            output = capture_stdout do
                sum.extremely_basic(10, 9)
            end
            final = output.split("\n")

            expect(final[0]).to eq("X = 19")
        end

        it 'calculates the sum of -10 and 4' do
            sum = Beecrowd1.new
            output = capture_stdout do
                sum.extremely_basic(-10, 4)
            end
            final = output.split("\n")

            expect(final[0]).to eq("X = -6")
        end
    end

    describe '#area_of_a_circle' do
        it 'calculates the area of a circle with a radius of 2' do
            area = Beecrowd1.new
            output = capture_stdout do
                area.area_of_a_circle(2)
            end
            final = output.split("\n")

            expect(final[0]).to eq("A=12.5664")
        end

        it 'calculates the area of a circle with a radius of 100.64' do
            area = Beecrowd1.new
            output = capture_stdout do
                area.area_of_a_circle(100.64)
            end
            final = output.split("\n")

            expect(final[0]).to eq("A=31819.3103")
        end
    end

    describe '#simple_sum' do
        it 'calculates a sum with 30 and 10' do
            soma = Beecrowd1.new
            output = capture_stdout do
                soma.simple_sum(30, 10)
            end
            final = output.split("\n")

            expect(final[0]).to eq("SOMA = 40")
        end

        it 'calculates a sum with -30 and 10' do
            soma = Beecrowd1.new
            output = capture_stdout do
                soma.simple_sum(-30, 10)
            end
            final = output.split("\n")

            expect(final[0]).to eq("SOMA = -20")
        end
    end

    describe '#simple_product' do
        it 'calculates the product between 3 and 9' do
            product = Beecrowd1.new
            output = capture_stdout do
                product.simple_product(3, 9)
            end
            final = output.split("\n")

            expect(final[0]).to eq("PROD = 27")
        end

        it 'calculates the product between -30 and 10' do
            product = Beecrowd1.new
            output = capture_stdout do
                product.simple_product(-30, 10)
            end
            final = output.split("\n")

            expect(final[0]).to eq("PROD = -300")
        end
    end
end
