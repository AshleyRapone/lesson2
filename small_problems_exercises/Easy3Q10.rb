# Write a method that returns true if its integer argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.

def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse
end

palindromic_number?(34543)
palindromic_number?(123210)
palindromic_number?(22)
palindromic_number?(5)


#or

def palindromic_number?(number)
  palindrome?(number.to_s)
end

palindromic_number?(34543)
palindromic_number?(123210)
palindromic_number?(22)
palindromic_number?(5)
