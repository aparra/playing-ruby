class Employee
  def initialize(options = {})
    options.each (|name, value| instance_variable_set "@#{name}", value)
  end
  
  def say_hello
    puts "Hi there!"
  end
end

Employee.class_eval (remove_method :say_hello)

class Teacher < Employee
  def initialize(options = {})
    options.merge!(:role => "Teacher")
    super
  end
end