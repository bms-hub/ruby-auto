
class Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "O #{nome} está ligado!"
  end

  def buzinar
    puts "Beep! Beep!"
  end
end

class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciando o trajeto."
  end
end

class Moto < Veiculo
  def pilotar
    puts "#{nome} iniciando o trajeto."
  end
end

civic = Carro.new("Civic", "Honda", "SI")
puts civic.nome
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new("Lancer", "Mitsubishi", "EVO")
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new("Fazer", "Yamaha", "250X")
fazer.ligar
fazer.buzinar
fazer.pilotar
