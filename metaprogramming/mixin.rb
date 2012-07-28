module Summable
  def sum
    inject(:+)
  end
end

class Array; include Summable; end
class Range; include Summable; end

puts Array.included_modules

puts "###########################################"

module Permalink
  def to_permalink
    self.to_s.downcase.gsub(/[^a-z0-9-]/, "-")
  end
end

title = "Ruby Metaprogramming: I really like it"
title.extend Permalink
puts title.to_permalink

puts "###########################################"

module Person
  extend self
  
  def say
    "Hi there!"
  end
end

puts Person.say
