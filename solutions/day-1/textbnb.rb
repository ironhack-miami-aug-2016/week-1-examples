# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

# ----------

def print_homes( homes_array )
  homes_array.each do |the_home|
    puts "#{the_home.name} in #{the_home.city}"
    puts "Price: $#{the_home.price} a night"
    puts ""
  end

  total_prices = homes_array.reduce(0.0) do |accumulator, the_home|
    accumulator + the_home.price
  end

  # Calculate the average based on the amount of prices in the array
  the_average = total_prices / homes_array.length

  puts "Average price per night: $#{the_average}"
end

# ----------

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]



# /---------------------------------------------------------
#  ------------------- APPLICATION CODE --------------------
#  ---------------------------------------------------------/

puts ""

print_homes( homes )
