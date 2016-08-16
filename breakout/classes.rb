class Sandwich
  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(the_ingredient)
    @ingredients.push(the_ingredient)
  end

  def buy
    total_calories = 0
    total_price = 0

    puts "Buying Sandwich: #{@name}"

    @ingredients.each do |the_ingredient|
      total_calories += the_ingredient.calories
      total_price += the_ingredient.price

      puts "- #{the_ingredient.name}: calories=#{the_ingredient.calories}, price=$#{the_ingredient.price}"
    end

    puts "Total calories: #{total_calories}"
    puts "Total price: $#{total_price}"
  end
end


class Ingredient
  attr_accessor(:name, :calories, :price)

  def initialize(name, calories, price)
    @name = name
    @calories = calories
    @price = price
  end
end


# -----------------------------------------------------------



salmon = Ingredient.new("Salmon", 100, 8)
capers = Ingredient.new("Capers", 20, 1)
mustard = Ingredient.new("Mustard", 20, 0.5)
pickles = Ingredient.new("Pickles", 50, 1.5)


sandwich_a = Sandwich.new("Salmon Sandwich")

sandwich_a.add_ingredient( salmon )
sandwich_a.add_ingredient( capers )
sandwich_a.add_ingredient( mustard )
sandwich_a.add_ingredient( pickles )

sandwich_a.buy


black_olives = Ingredient.new("Black Olives", 50, 2)
stuffing = Ingredient.new("Stuffing", 200, 3)
turkey = Ingredient.new("Turkey", 20, 5)
mozarella = Ingredient.new("Mozarella Cheese", 100, 2)
lettuce = Ingredient.new("Romaine Lettuce", 10, 0.10)
tomatoes = Ingredient.new("Tomatoes", 20, 0.50)


puts ""


sandwich_b = Sandwich.new("Turkey Sandwich")

sandwich_b.add_ingredient( black_olives )
sandwich_b.add_ingredient( stuffing )
sandwich_b.add_ingredient( turkey )
sandwich_b.add_ingredient( mozarella )
sandwich_b.add_ingredient( lettuce )
sandwich_b.add_ingredient( tomatoes )

sandwich_b.buy

