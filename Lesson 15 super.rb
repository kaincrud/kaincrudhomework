class Animal
  def initialize name
    @name = name
  end

  def jump
    puts "#{@name} is jumping..."
  end
end

class Cat < Animal

  def initialize
    super 'Manul'
  end

  def say_meow
    puts "#{@name} Meoooooowww!"
  end
end

class Dog < Animal

  def initialize
    super 'Patron'
  end

  def bark
    puts "#{@name} Gavvv!"
  end
end

cat = Cat.new
dog = Dog.new

cat.jump
cat.say_meow

dog.jump
dog.bark