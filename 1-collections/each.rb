shoe_brands_array = [ "Nike", "Puma", "Adidas", "Steve Madden", "Salvatore Ferragamo" ]

uppercase_brands = []


shoe_brands_array.each do |the_brand|

  puts the_brand

  uppercase_brands.push( the_brand.upcase )

end


puts ""
puts "Now uppercase:"

uppercase_brands.each do |the_brand|
  puts the_brand
end
