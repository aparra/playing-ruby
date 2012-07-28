puts "Escreva um texto"
texto = gets
File.open("teste.txt", "w") do |f| 
  f << texto
end

Dir.entries(".").each do |file_name|
  next unless file_name == "teste.txt"
  content = File.read(file_name)
  puts content
end

require 'net/http'
Net::HTTP.start('www.caelum.com.br', 80) do |http|
  puts http.get('/').body
end