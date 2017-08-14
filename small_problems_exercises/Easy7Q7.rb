# Write a method that takes an Array of integers as input, multiplies all the numbers together,
# divides the result by the number of entries in the Array, and
# then prints the result rounded to 3 decimal places. Assume the array is non-empty.

def show_multiplicative_average(array)
  multiplication_of_items = array.map(&:to_f).reduce(:*)
  result = multiplication_of_items / array.size
  puts "The result is " + format('%.3f', result) + "."
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])


=begin
Input: array of integers
-variable that holds value of each number as a float and reduce :* for array
-set another and take variable and divide by array size
-print string interpolation of result

=end

# or
def show_multiplicative_average(array)
  result = array.map(&:to_f).reduce(:*)/ array.size
  "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

#or

def show_multiplicative_average(array)
  multiply = array.reduce(:*)
  average = multiply.to_f / array.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])

show_multiplicative_average([6])

show_multiplicative_average([2, 5, 7, 11, 13, 17])
