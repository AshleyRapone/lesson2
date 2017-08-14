# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word.
# You may also assume that each string contains nothing but words and spaces


def swap(string)
  array = []
  if string.length > 0
  string.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
    array << word
  end
end
  array.join(' ')
end


swap('Oh what a wonderful day it is')
swap('Abcde')
swap('a')



=begin
-Input: string
-create a new array
-take string and turn into an array of words by using the split method
-iterate throught the string array and for each word
  -assign the first index the last index and vice versa
  -put the word into the new array
-return the new array

=end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
swap('Abcde') #== 'ebcdA'
swap('a') #== 'a'
