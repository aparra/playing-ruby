def procura_sede_copa_do_mundo(ano)
  case ano
  when 1985..1993
    puts "nao sei :)"
  when 1994
    puts "Estados Unidos"
  when 1998
    puts "Franca"
  end
end

# lazy inicialization
ano ||= 1994
procura_sede_copa_do_mundo ano
procura_sede_copa_do_mundo 1990

for i in (1..3)
  puts "valor de i=#{i}"
end