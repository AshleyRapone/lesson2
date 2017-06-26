# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and" in front of it.

puts famous_words.prepend("Four score and ")

#or
puts "Four score and " << famous_words

#or
puts "Four score and " + famous_words

#or
puts famous_words.insert(0, "Four score and ")

# inserts another string before the character at the given index
