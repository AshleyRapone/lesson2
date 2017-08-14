# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of every word
# capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

def word_cap(string)
  string_array = string.split.map do |word|
    word.capitalize
  end
  string_array.join(' ')
end


word_cap('four score and seven')
word_cap('the javaScript language')
word_cap('this is a "quoted" word')


=begin
Input: string
-split string into array of words by using split method
-transform each word in array by using map method
  -word.capitalized

=end

# or

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

word_cap('four score and seven')
word_cap('the javaScript language')
word_cap('this is a "quoted" word')
