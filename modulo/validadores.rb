# modulo com comportamento de namespace

module Validadores
  class ValidadorDeCpf
    def valida(cpf)
      true
    end
  end
  
  class ValidadorDeRg
    def valida(rg)
      true
    end
  end
end

validadorDeCpf = Validadores::ValidadorDeCpf.new
puts validadorDeCpf.valida "362.588.130-62"

validadorDeRg = Validadores::ValidadorDeCpf.new
puts validadorDeRg.valida "33.554.452-9"
