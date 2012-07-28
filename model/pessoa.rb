class Pessoa 
  def fala
    puts "oi"
  end
end

ligia = Pessoa.new
ligia.fala

ander = Pessoa.new
def ander.anda
  puts "andando"
end

ander.anda # anda é um metodo singleton ele vive na classe singleton do objeto ander
# ligia.anda ligia não tem o método anda - NoMethodErro

class Cachorro
  class << self
    def late
      puts "au au au"
    end
  end
end

Cachorro.late

lilica = Cachorro.new
# lilica.late lilica não tem o méotodo late, ele pertencia a classe Singleton da classe Cachorro

