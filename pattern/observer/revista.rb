require 'observer'

class Revista
  include Observable
  
  attr_accessor :nome
  
  def initialize(nome)
    @nome = nome
  end

  def recebe_comentario(comentario)
    puts "Comentario recebido: #{comentario}"
    changed
    notify_observers(comentario)
  end
end

class Gerente
  def update(comentario)
    puts "Gerente viu o comentario: #{comentario}"
  end
end

dc_comics = Revista.new("dc comics")
dc_comics.add_observer(Gerente.new)

dc_comics.recebe_comentario("muito legal :)")