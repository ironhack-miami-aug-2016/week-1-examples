# lib/designer.rb

class Designer
  include CaffeineConsumer
  include Payable

  def design_things
    consume_caffeine

    select_typography
    select_colors

    receive_salary
  end

  def select_colors
    puts "Selecting my favorite shade of purple"
  end

  def select_typography
    puts "Choosing Helvetica"
  end
end
