# frozen_string_literal: true

class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    list.push(avenger)
  end
end

# TDD (Test Driven Developer - Desenvolvimento Guiado a Testes)
describe AvengersHeadQuarter do
  it 'deve adicionar um vingador' do
    hq = AvengersHeadQuarter.new

    hq.put('Spiderman')

    expect(hq.list).to include 'Spiderman'
  end

  it 'deve adicionar uma lista de vingadores' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Cap')
    hq.put('Spider')

    res = !hq.list.empty?

    expect(res).to be true
  end

  it 'Thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new

    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    expect(hq.list).to start_with('Thor')
  end

  it 'Ironman deve ser o ultimo da lista' do
    hq = AvengersHeadQuarter.new

    hq.put('Thor')
    hq.put('Cap')
    hq.put('Pantera')
    hq.put('Ironman')

    expect(hq.list).to end_with('Ironman')
  end

  it 'deve conter o sobrenome' do
    avenger = 'Peter Parker'

    expect(avenger).to match(/Parker/)
  end
end
