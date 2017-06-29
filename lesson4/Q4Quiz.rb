# This method takes a string in standard sentence case and should return it in snake case:

sentence = 'The sky was blue'
snake(sentence) # => 'the_sky_was_blue'

# but it contains an error.
# Identify the line of code that is causing the error.

def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

=begin
current_word = 1

becasue current_word references the index number which does not transform the first word to downcase
current_word needs to be equal to 0
=end
