# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.


def word_sizes(string)
  hash = Hash.new(0)
  string.split.each do |word|
    hash[word.size] += 1
  end
  hash
end




word_sizes('Four score and seven.')
word_sizes('Hey diddle diddle, the cat and the fiddle!')
word_sizes("What's up doc?")
word_sizes('')

=begin
Input: string
-create an empy hash by using Hash.new(0) so we can count the words
-take string and convert it into an array of words by using the split method
-iterate through the array of words and for each word
  -set hash key to the size of the word and the value to increment of 1
-return hash

=end
