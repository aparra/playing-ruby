puts "Digite um numero"
numero = gets.to_i

begin
  resultado = 100/numero
rescue
  puts "Numero digitado invalido"
  exit
end

puts "100/#{numero} eh #{resultado}"