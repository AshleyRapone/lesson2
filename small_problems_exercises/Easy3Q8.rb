# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
# A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

def palindrome?(word)
  if word == word.reverse
    true
  else
    false
  end
end

palindrome?('madam')
palindrome?('Madam')
palindrome?("madam i'm adam")
palindrome?('356653')

# or

def palindrome?(string)
  string == string.reverse
end

palindrome?('madam')
palindrome?('Madam')
palindrome?("madam i'm adam")
palindrome?('356653')


=begin
Input: string of one word or multiply words
-if string == string.reverse
  true
Output: true or false
=end
