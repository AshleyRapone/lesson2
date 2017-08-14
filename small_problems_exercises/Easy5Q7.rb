# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
# For instance, the length of "it's" is 3, not 4.


def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
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
  -set variable to word without non-letters by using the delete method
  -set hash key to the size of the clean word and the value to increment of 1
-return hash

=end

def word_sizes(string)
  results = Hash.new(0)
  string.split.each do |word|
    word.delete!('^a-zA-Z')
    results[word.length] += 1
  end
  results
end

word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!')# == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') #== {}
