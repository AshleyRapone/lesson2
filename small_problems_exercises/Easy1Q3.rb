# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(integer)
  integer.to_s.chars.map do |number|
    number.to_i
  end
end

# or

def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
end

p digit_list(12345) # == [1, 2, 3, 4, 5]     # => true
p digit_list(7) # == [7]                     # => true
p digit_list(375290) # == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) # == [4, 4, 4]             # => true

=begin
Want to take the integers and turn it into a string so the chars method can be called
to turn the string into an array of characters.
Then I want to turn all of the characters into numbers


-turn integer into string by to_s method
-turn strings into characters in an array by chars method
-Use map method to return a new array of integers
-turn characters to numbers by to_i method
=end
