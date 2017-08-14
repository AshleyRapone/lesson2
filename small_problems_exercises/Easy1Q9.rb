# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)




=begin
Input: Positive integer
-convert number to string
-use chars method to add each character in an array
-transform each character into a number and
  -add up the sum of the array

Output: RETURN sum of the digits
=end

def sum(integer)
  sum = 0
  integer.to_s.chars(&:to_i).each do |number|
    sum << sum += number
  end
  sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)

=begin
-set sum variable to 0
-turn integer to string by using #to_i
-iterate through the array and for each number
  -add the number to the sum and add that to the sum variable
-return the sum variable

=end

# or

def sum(number)
  number.to_s.delete('^0-9').chars.map(&:to_i).reduce(:+)
end


puts sum(23)
puts sum(496)
puts sum(123_456_789)


=begin
Input: positive integer
-turn integers into string
-delete non-numbers
-turn string into characters in an array
-use map to turn the characters back to numbers
-add up all numbers in array
Output: returns sum of its digits
=end
