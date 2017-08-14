# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(words)
  words_array = words.split
  words_array[-2]
end


penultimate('last word')
penultimate('Launch School is great!')

=begin
Input: string
-take string and split into word using the split method and put into variable
-refernce the second to last index of the words array
=end
