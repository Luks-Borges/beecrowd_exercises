require "./lib/classes/beecrowd1"

RSpec.describe Beecrowd1 do

    describe'#helloWorld' do
        it 'Executes a output with a string' do
            string = Beecrowd1.new
            resposta = capture_stdout do
                string.helloWorld
            end
            saida_final = resposta.split("\n")

            expect(saida_final[0]).to eq("Hello World!") #Saída final tem [0] pois ela é se tronou um array depois da função split
        end
    end

    describe'#extremelyBasic' do
        it 'calculates the sum of 10 and 9' do
            sum = Beecrowd1.new
            output = capture_stdout do
                sum.extremelyBasic(10, 9)
            end
            final = output.split("\n")

            expect(final[0]).to eq("X = 19")
        end

        it 'calculates the sum of -10 and 4' do
            sum = Beecrowd1.new
            output = capture_stdout do
                sum.extremelyBasic(-10, 4)
            end
            final = output.split("\n")

            expect(final[0]).to eq("X = -6")
        end
    end

    describe '#areaOfACircle' do
        it 'calculates the area of a circle with a radius of 2' do
            area = Beecrowd1.new
            output = capture_stdout do
                area.areaOfACircle(2)
            end
            final = output.split("\n")

            expect(final[0]).to eq("A=12.5664")
        end

        it 'calculates the area of a circle with a radius of 100.64' do
            area = Beecrowd1.new
            output = capture_stdout do
                area.areaOfACircle(100.64)
            end
            final = output.split("\n")

            expect(final[0]).to eq("A=31819.3103")
        end
    end

    describe '#simpleSum' do
        it 'calculates a sum with 30 and 10' do
            soma = Beecrowd1.new
            output = capture_stdout do
                soma.simpleSum(30, 10)
            end
            final = output.split("\n")

            expect(final[0]).to eq("SOMA = 40")
        end

        it 'calculates a sum with -30 and 10' do
            soma = Beecrowd1.new
            output = capture_stdout do
                soma.simpleSum(-30, 10)
            end
            final = output.split("\n")

            expect(final[0]).to eq("SOMA = -20")
        end
    end

    describe '#simpleProduct' do
        it 'calculates the product between 3 and 9' do
            product = Beecrowd1.new
            output = capture_stdout do
                product.simpleProduct(3, 9)
            end
            final = output.split("\n")

            expect(final[0]).to eq("PROD = 27")
        end

        it 'calculates the product between -30 and 10' do
            product = Beecrowd1.new
            output = capture_stdout do
                product.simpleProduct(-30, 10)
            end
            final = output.split("\n")

            expect(final[0]).to eq("PROD = -300")
        end
    end
end