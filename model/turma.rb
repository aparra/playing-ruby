class Turma     
  def initialize(*alunos)
    @alunos = alunos
  end
  
  def each
    @alunos.each { |i| yield i }
  end
end

ingles = Turma.new("Joao", "Maria", "Jose")
ingles.each do |nome|
  puts nome
end