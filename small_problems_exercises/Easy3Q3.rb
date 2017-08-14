# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.
# Spaces should not be counted as a character.

puts "Please write word or multiple words:"
input = gets.chomp

number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."

# or

puts "Please write word or mulitply words:"
word = gets.chomp

sum = 0

word.split.each do |word|
  sum += word.length
end

puts "There are #{sum} characters in \"#{word}\"."
