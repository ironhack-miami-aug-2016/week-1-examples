class Sandwich
  def initalize(name, calories, ingredients, price, bread, is_toasted, rating, satisfaction)
    @name = name
    @calories = calories
    @ingredients = ingredients
    @price = price
    @bread = bread
    @is_toasted = is_toasted
    @rating = rating
    @satisfaction = satisfaction
  end
end



# BAD WAY #1
# ==========
# puts sandwiches[0]
# puts sandwiches[1]
# puts sandwiches[2]
# puts sandwiches[3]
# puts sandwiches[4]
# puts sandwiches[5]


# BAD WAY #2
# ==========
# for i in 0..(sandwiches.length - 1)
#   puts sandwiches[i]

#   puts sandwiches[i].name
#   puts sandwiches[i].calories
#   puts sandwiches[i].bread
#   puts sandwiches[i].rating
# end

#                 0          1           2          3       4        5            6             7
sandwiches = ["salmon", "italian", "tuna salad", "mahi", "ham", "croqueta", "cheese steak", "meatball"]


sandwiches.each do |the_sandwich|

  if the_sandwich == "mahi"
    puts "That's a fancy fuckin' sandwich."
  elsif the_sandwich == "croqueta"
    puts "Pound for pound, the best sandwich."
  else
    puts the_sandwich
  end

end


puts ""
puts ""


animals = ["cats", "pikachu", "cheetah", "dog", "hippo", "tarzan", "homo-sapiens"]


animals.each do |the_animal|
  if the_animal == "tarzan"
    puts "TARZAN: Daniel got his wish."
  else
    puts the_animal
  end
end
