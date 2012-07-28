class Conta
  def transfere(valor, argumentos)
    puts "Transferindo #{valor} para #{argumentos[:para]} #{argumentos[:em]}"
  end
end

ligia = Conta.new
anderson = Conta.new

ligia.transfere(50.00, {:para => anderson, :em => Time.now})
ligia.transfere(60.00, {para: anderson, em: Time.now})
ligia.transfere 70.00, para: anderson, em: Time.now
