# app.rb

require_relative("lib/rook.rb")

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")


puts "Valid Rook movements"
puts "--------------------"

p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 3) == "yes"
p white_rook_right.can_move?(2, 1) == "yes"


puts "Invalid Rook movements"
puts "----------------------"

p black_rook_left.can_move?(2, 7) == "no"
p black_rook_left.can_move?(2, 5) == "no"
p white_rook_right.can_move?(3, 5) == "no"
p white_rook_right.can_move?(5, 6) == "no"
