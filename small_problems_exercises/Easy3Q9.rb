# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

def palindrome?(word)
  word == word.reverse
end

def real_palindrome?(word)
  word = word.downcase.delete('^a-z0-9')
  palindrome?(word)
end


real_palindrome?('madam')
real_palindrome?('Madam')
real_palindrome?("Madam, I'm Adam")
real_palindrome?('356653')
real_palindrome?('356a653')
real_palindrome?('123ab321')
