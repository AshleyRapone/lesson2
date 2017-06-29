# This method takes a string in standard sentence case and should return it in upper snake case:

sentence = 'The sky was blue'
upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'

# but it contains an error.
# Identify the line of code that is causing the error.

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    current_word += 1
    break if current_word == words.size

    words[current_word].upcase!
  end

  words.join('_')
end

=begin
current_word += 1

because it is referencing the indices which means the first word of the array does not get transformed
current_word += 1 need to be at the end of the loop
=end
