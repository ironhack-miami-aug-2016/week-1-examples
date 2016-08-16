# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

# shape
# color
# crew
# captain
# orders

class Spaceship

  def initialize(name, speed, size)
    @name = name
    @speed = speed
    @size = size

    @planets_array = []
  end

  def take_off
    puts "The #{@name} is now taking off going at #{@speed} lightspeed. Shwooooooh."
  end


  def travel_to(planet_name)
    @planets_array.push( planet_name )
  end

  def planets_visited
    @planets_array
  end


  # CLASS METHOD

  def self.star_trek_opening
    puts "Space... the final frontier. These are the voyages of the starship Enterprise..."
  end

  def self.star_wars_opening
    puts "A long time ago in a galaxy far far away. (cue John Williams music)"
  end

end


class StealthShip < Spaceship

  def initialize(name, speed, size)

    # Call Spaceship's initialize
    super(name, speed, size)

    @stealth = true
  end

  def activate_camouflage
    @stealth = true
  end

  def travel_to(planet_name)
    if @stealth == true
      puts "...."
    else
      puts "Traveling to #{planet_name}"
    end

    @planets_array.push( planet_name )

  end
end




# /---------------------------------------------------------
#  -------------------- APPLICATION CODE -------------------
#  ---------------------------------------------------------/

puts "The Millennium Falcon"
the_falcon = Spaceship.new("Millennium Falcon", 1.5, "medium")
the_falcon.take_off
the_falcon.travel_to("Mustafar")
the_falcon.travel_to("Coruscant")

p the_falcon.planets_visited


puts ""
puts ""
puts "The Enterprise"
the_enterprise = Spaceship.new("Enterprise", 2.0, "large")
the_enterprise.take_off
the_enterprise.travel_to("New Vulcan")

p the_enterprise.planets_visited


puts ""
puts ""
puts "Stealth Ship"
the_stealth_ship = StealthShip.new("Shhhhhhhhh", 1.0, "small")

the_stealth_ship.take_off
the_stealth_ship.travel_to("Coruscant")
the_stealth_ship.travel_to("Endor")

p the_stealth_ship.planets_visited


the_stealth_ship.activate_camouflage

the_stealth_ship.travel_to("Hoth")
the_stealth_ship.travel_to("Mustafar")
the_stealth_ship.travel_to("Kashyyk")


# NOPE: the_falcon.star_wars_opening

puts ""
puts "Class Methods:"

Spaceship.star_wars_opening
Spaceship.star_trek_opening

