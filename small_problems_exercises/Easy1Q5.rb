# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('')
puts reverse_sentence('Hello World')
puts reverse_sentence('Reverse these words')

=begin
Input: string
-take string and turn into an array of words by using split method
-reverse words by using reverse method
-Join words of the array together by using join method with space as argument
Output: reversed string sentence
=end
