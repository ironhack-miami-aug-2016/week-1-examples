class Animal

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

end



dog = Animal.new("Shadow", 7)

alains_dog = Animal.new("Dymitri", 3)



p  alains_dog.name
# puts  alains_dog.name.inspect

puts  alains_dog.name
