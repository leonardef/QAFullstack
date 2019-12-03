
# Atributos e métodos
# Caracteristicas e ações

#Carro (Nome, Marca, Modelo, Cor, Quatidade de Portas, etc...)
# ligar, businar, parar, etc...

class Carro
  attr_accessor :nome

  def ligar
    puts "O Carro está pronto para iniciar o trajeto."
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome
civic.ligar
