class Relatorio
  @@instance = Relatorio.new
  
  def self.instance
    return @@instance
  end
  
  private_class_method :new
end