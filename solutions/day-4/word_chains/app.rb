# app.rb

require("ruby-dictionary")

require_relative("lib/word_chain.rb")

dict = Dictionary.from_file("/usr/share/dict/words")
chainer = WordChain.new(dict)

words_array = [
  ["cat", "pig"],
  ["cat", "dog"],
  ["fish", "duct"],
  ["ruby", "code"],
  ["bang", "farm"]
]

words_array.each do |word_set|
  start_word = word_set[0]
  end_word = word_set[1]

  chainer.print_chain(start_word, end_word)

  puts ""
end
