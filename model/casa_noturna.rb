class IdadeInsuficienteException < Exception
end

class CasaNoturna
  
  def verifica_idade(idade)
    unless idade > 18
      raise IdadeInsuficienteException, "Proibido para menores de idade"
    end
  end
  
end

balada = CasaNoturna.new

begin
  balada.verifica_idade 17
rescue IdadeInsuficienteException => e
  puts "Foi lancado a exception #{e} ##{e.class}"
end
  