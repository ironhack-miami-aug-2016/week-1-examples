shoe_brands_array = [ "Nike", "Puma", "Adidas", "Steve Madden", "Salvatore Ferragamo" ]

uppercase_brands = shoe_brands_array.map do |the_brand|
  the_brand.upcase
end

#    Original                  "Mapped"
# ----------------------------------------
# 0:  "Nike"                -> "NIKE"
# 1:  "Puma"                -> "PUMA"
# 2:  "Adidas"              -> "ADIDAS"
# 3:  "Steve Madden"        -> "STEVE MADDEN"
# 4:  "Salvatore Ferragamo" -> "SALVATORE FERRAGAMO"

puts ""
puts "Now uppercase:"

uppercase_brands.each do |the_brand|
  puts the_brand
end
