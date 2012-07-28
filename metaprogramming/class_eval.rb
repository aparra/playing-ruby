class Person; end

Person.class_eval do
  def clap
    puts "*clap* *clap* *clap*"
  end
end

person = Person.new
person.clap

Person.class_eval do
  %w[name age heigth].each do |name|
    define_method(name) do |*args|
      instance_variable_set("@#{name}", args.first) unless args.empty?
      instance_variable_get("@#{name}")
    end
  end
end

Person.class_eval do
  %w[name age heigth].each do |name|
    class_eval << -RUBY, __FILE__, __LINE__
      def #{name}(*args)
        # def age(*args) @#{name} = args.first unlees args.empty?
        # @age = args.first unless args.empty? @#{name}
        # @ae
      end
        # @end
    RUBY
  end
end

bootrex /fixmbr
        