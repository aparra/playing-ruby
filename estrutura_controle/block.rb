caelum = [
  {:ruby => 'rr-71', :java => 'fj-11'},
  {:ruby => 'rr-75', :java => 'fj-21'}
]

caelum.sort_by { |curso| curso[:ruby] }.each do |curso|
  puts "Curso de RoR na Caelum: #{curso[:ruby]}"
end

caelum.sort_by { |curso| curso[:java] }.each do |curso|
  next if curso[:java] == 'fj-11'
  puts "Curso de Java WEB na Caelum: #{curso[:java]}"
end