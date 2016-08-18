# lib/programmer.rb

class Programmer
  include CaffeineConsumer
  include Payable

  def program
    consume_caffeine

    do_stuff_with_computers

    receive_salary
  end

  def do_stuff_with_computers
    puts "Doing wizardy with computers 🚀"
  end
end
