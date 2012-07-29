class Franquia
  
  def initialize
    @restaurantes = []
  end
  
  def adiciona(restaurante)
    @restaurantes << restaurante
  end
  
  def mostra
    @restaurantes.each do |restaurante|
      puts restaurante.nome
    end
  end
  
  def relatorio
    @restaurantes.each do |restaurante|
      yield restaurante
    end
  end

  def pesquisa(nome)
    if nome.size < 5
      throw :nome_invalido, "Nome invalido, digite novamente!"
    end
    
    @restaurantes.select {|r| r.nome == nome}.first
  end
  
  def expandir(restaurante)
    def restaurante.cadastrar_vips
      puts "Restaurante #{self.nome} agora com area VIP"
    end
  end
end

class Restaurante
  attr_accessor :nome 
  def initialize(nome)
    @@total ||= 0
    @@total += 1
    @nome = nome
  end
  
  def ==(restaurante)
    self.nome == restaurante.nome
  end
  
  def self.relatorio
    puts "Foram criados #{@@total} restaurantes"
  end    
end

franquia = Franquia.new
franquia.adiciona Restaurante.new("sujinho")
franquia.adiciona Restaurante.new("esquisito")

Restaurante.relatorio

franquia.mostra
franquia.relatorio do |restaurante|
  puts "Restaurante cadastado: #{restaurante.nome}"
end

catch :nome_invalido do 
  franquia.pesquisa "mc"
end

restaurante = franquia.pesquisa "sujinho"

unless restaurante.nil? 
  puts "Encontrou #{restaurante.nome}" 
end

franquia.expandir restaurante
restaurante.cadastrar_vips
