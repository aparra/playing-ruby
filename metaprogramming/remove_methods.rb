class Parent
  def message
    "Hello from parent"
  end
end

class Child < Parent
  def message
    "Hello from child"
  end
end

# puts Child.new.message
# Child.class_eval { remove_method :message }
# puts Child.new.message

puts Child.new.message
Child.class_eval { undef_method :message }
puts Child.new.message