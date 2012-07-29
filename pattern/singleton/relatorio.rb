class Relatorio
  @@instance = Relatorio.new
  
  def self.instance
    return @@instance
  end
  
  private_class_method :new
end

relatorio1 = Relatorio.instance
relatorio2 = Relatorio.instance

puts relatorio1 == relatorio2