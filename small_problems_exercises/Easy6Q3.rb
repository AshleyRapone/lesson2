# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers.
# This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate.
# For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous,
# especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits
# specified as an argument. (The first Fibonacci number has index 1.)

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end


find_fibonacci_index_by_length(2)
find_fibonacci_index_by_length(10)
find_fibonacci_index_by_length(100)
find_fibonacci_index_by_length(1000)
find_fibonacci_index_by_length(10000)

=begin
Input: integger
-set first variable to 1
-set second variable to 2
-set index variable to 2
-set a loop
-increment index by 1
-set fibonacci variable equal to first plus second
-break if fibonacci to string size is greater than or equal to integger
-set first to second
-set second to fibonancci
-end loop
-return index
=end
