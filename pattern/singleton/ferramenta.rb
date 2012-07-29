require 'singleton'

class Ferramenta
  include Singleton
end

ferramenta1 = Ferramenta.instance
ferramenta2 = Ferramenta.instance

puts ferramenta1 == ferramenta2