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
  end

  def take_off
    puts "The #{@name} is now taking off going at #{@speed} lightspeed. Shwooooooh."
  end


  # CLASS METHOD

  def self.star_trek_opening
    puts "Space... the final frontier. These are the voyages of the starship Enterprise..."
  end

  def self.star_wars_opening
    puts "A long time ago in a galaxy far far away. (cue John Williams music)"
  end

end



# /---------------------------------------------------------
#  -------------------- APPLICATION CODE -------------------
#  ---------------------------------------------------------/

the_falcon = Spaceship.new("Millennium Falcon", 1.5, "medium")
the_falcon.take_off

the_enterprise = Spaceship.new("Enterprise", 2.0, "large")
the_enterprise.take_off


# NOPE: the_falcon.star_wars_opening

puts ""
puts "Class Methods:"

Spaceship.star_wars_opening
Spaceship.star_trek_opening

