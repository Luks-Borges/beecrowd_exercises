require './classes/beecrowd2'

RSpec.describe Beecrowd2 do
    describe '#salary' do
        it "Executes the first block of tests" do
            s = Beecrowd2.new

            #capture_stdout definido em spec_helper.rb
            saida = capture_stdout do
                s.salary(25, 100, 5.50)
            end

            linhas = saida.split("\n") #Corta a linha para gerar os dois valores

            #Executa as duas linhas
            expect(linhas[0]).to eq("NUMBER = 25")
            expect(linhas[1]).to eq("SALARY = U$ 550.00")
        end

        it "Executes the second block of tests" do
            s = Beecrowd2.new

            #capture_stdout definido em spec_helper.rb
            saida = capture_stdout do
                s.salary(1, 200, 20.50)
            end

            linhas = saida.split("\n") #Corta o enter no final da entrada

            #Executa as duas linhas
            expect(linhas[0]).to eq("NUMBER = 1")
            expect(linhas[1]).to eq("SALARY = U$ 4100.00")
        end

        it "Executes the third block of tests" do
            s = Beecrowd2.new

            #capture_stdout definido em spec_helper.rb
            saida = capture_stdout do
                s.salary(6, 145, 15.55)
            end

            linhas = saida.split("\n") #Corta o enter no final da entrada

            #Executa as duas linhas
            expect(linhas[0]).to eq("NUMBER = 6")
            expect(linhas[1]).to eq("SALARY = U$ 2254.75")
        end
    end
end


