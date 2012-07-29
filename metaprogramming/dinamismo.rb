class Aluno
  # nao sabe nada
end

class Professor
  def ensina(aluno)
    def aluno.escreve
      "sei escrever"
    end
  end
end

juca = Aluno.new
puts juca.respond_to? :escreve
# => false

professor = Professor.new
professor.ensina juca
puts juca.escreve
# => "sei escrever"
