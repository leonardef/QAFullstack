
class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    self.saldo += valor
    puts "Depositando a quantia de R$#{valor} na conta de #{self.nome}" # interpolação
  end

  def getSaldo
    puts "Saldo: R$#{self.saldo}"
  end
end

conta = Conta.new("Leonarde")

conta.deposita(100.00)
conta.getSaldo

conta.deposita(10)
conta.getSaldo
