
class AvengersHeadQuarter

    attr_accessor :avengers

    def initialize
        self.avengers = []
    end

    def put(avenger)
        self.avengers.push(avenger)
    end
end


# TDD (Desenvolvimento Guiado por Testes)
describe AvengersHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.avengers).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de avengers' do
        hq = AvengersHeadQuarter.new
        hq.put('Spiderman')
        hq.put('Thor')
        hq.put('Ironman')
        hq.put('Hulk')

        res = hq.avengers.size > 0
        
        expect(hq.avengers).to include 'Ironman'
        expect(res).to be true
    end

    it 'Thor deve ser o primeiro da lista' do
        
        hq = AvengersHeadQuarter.new
      
        hq.put('Thor')
        hq.put('Spiderman')
        hq.put('Ironman')
        hq.put('Hulk')

        expect(hq.avengers).to start_with('Thor')

    end

    it 'Ironman deve ser o ultimo da lista' do
        
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Spiderman')
        hq.put('Hulk')
        hq.put('Ironman')
        # hq.put('Black Widow')

        expect(hq.avengers).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
        avenger. = 'Peter Parker'

        expect(avenger).to match(/Paker/)

    end
end
