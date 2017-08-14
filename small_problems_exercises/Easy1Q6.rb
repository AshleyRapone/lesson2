# Write a method that takes one argument, a string containing one or more words, and
# returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

def reverse_words(string)
  words = []

  string.split.each do |word|
    if word.length >= 5
      words << word.reverse
    else
      words << word
    end
  end

  words.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')


=begin
Input: string of one or more words
-make a words array
-take string and turn it into array of words
-iterate through each word and for each word
  -if word is greater than or equal to 5
    -then reverse it
    -put into words array
  -else
    put word into words array
-return words array joined by spaces
Output: string with five or more letter words reversed
=end


def reverse_words(string)
  reverse = string.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  reverse.join(' ')
end

p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')
