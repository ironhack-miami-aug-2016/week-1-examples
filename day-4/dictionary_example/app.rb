require "ruby-dictionary"

the_dictionary = Dictionary.from_file("/usr/share/dict/words")

puts "Words that exist"
p the_dictionary.exists?("cat")
p the_dictionary.exists?("pat")
p the_dictionary.exists?("pit")
p the_dictionary.exists?("pig")

puts ""

puts "Words that don't exist"
p the_dictionary.exists?("dat")
p the_dictionary.exists?("dem")
p the_dictionary.exists?("thunk")
p the_dictionary.exists?("brung")

puts ""

if the_dictionary.exists?("irregardless") == true
  puts "Why on earth is “irregardless” a word?"
end
