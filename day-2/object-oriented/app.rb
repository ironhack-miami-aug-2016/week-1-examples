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

end



# /---------------------------------------------------------
#  -------------------- APPLICATION CODE -------------------
#  ---------------------------------------------------------/

the_falcon = Spaceship.new("Millennium Falcon", 1.5, "medium")
the_falcon.take_off

the_enterprise = Spaceship.new("Enterprise", 2.0, "large")
the_enterprise.take_off
