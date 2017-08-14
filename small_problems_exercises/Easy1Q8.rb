# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.

def average(integer_array)
  sum = integer_array.sum
  average = sum / integer_array.size
end


puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

=begin
Input: array of positve integers (never empty)
-set variable to sum and have it equal to the integer_array.sum
-divide sum variable by positive integers array size and put it inot a variable called average

Output: RETURN average of all integers in array
=end

def average(integer_array)
  sum = 0
  integer_array.each do |number|
    sum << sum += number
  end
  sum
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

=begin
-set sum to 0
-iterate through each number in the array
  -add number to the sum and add it to sum variable
-return sum variable

=end


# or


def average(integers)
  sum = integers.reduce(:+)
  sum / integers.size
end


puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

=begin
Input: an array containing integers
-add all of the array items together and put into a variable called sum
-take sum and divide it by array size
Output: returns average of all numbers in the array
=end

def average(array)
  array.reduce(:+) / array.size
end

p average([1, 5, 87, 45, 8, 8])
p average([9, 47, 23, 95, 16, 52])
