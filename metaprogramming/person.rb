class Person
#  class << self
#    def count
#      @count ||= 0
#    end
#  end

  # atalho para criacao de metodo na classe Singleton do objeto Person
  def self.count
    @count ||= 0
  end
  
  def self.count=(increment)
    @count = increment
  end
  
  def initialize(name)
    @name = name
    self.class.count += 1
  end
  
  def name
    @name
  end
end

john = Person.new("John Doe")
puts john.name
puts Person.count