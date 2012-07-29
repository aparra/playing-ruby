module Observer
  def initialize
    @observers = []
  end
  
  def adiciona_observer(observer)
    @observers << observer
  end
  
  def notifica 
    @observers.each do |observer|
      observer.notifica
    end
  end
end

class Restaurante
  include Observer
  
  def qualifica(nota)
    puts "Restaurante recebeu a nota #{nota}"
    notifica
  end
end

class NotificaGerente
  def notifica
    puts "gerente notificado"
  end
end

restaurante = Restaurante.new
restaurante.adiciona_observer(NotificaGerente.new)

restaurante.qualifica 6 