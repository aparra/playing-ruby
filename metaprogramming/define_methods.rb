class User; end

User = Class.new do
  def self.say(message)
    puts message
  end
end

User.say "Hi there!"

puts "##################################"

class Person
  class << self
    define_method :description do
      puts "Hold a person information"
    end
  end
  
  def say(message)
    puts message
  end
  
  def say_hello
    say("Hey! Wassup?")
  end
  
  def say_goodbye
    say("Gotts go! Seeya!")
  end
  
  define_method :scream! do |message|
    say(message.upcase)
  end
end

person = Person.new
person.send :say, "Hello world!"

%w[hello goodbye].each do |name|
  person.send("say_#{name}")
end

person.scream! "Shut up!"

Person.description

puts "##################################"

class Teste
  class_eval do
    def say(message)
      puts message
    end
  end
end

teste = Teste.new
teste.say "Hi!"

puts "##################################"

class Array
  def sum
    inject(:+)
  end
end

require 'test/unit'
class TestArray < Test::Unit::TestCase
  def test_sum
    assert_equal 6, [1, 2, 3].sum
  end
end
