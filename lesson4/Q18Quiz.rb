# Identify all of the code implementations that correctly meet the following set of requirements.

# Given an array numbers which contains both odd and even integers;
# create two new arrays, odd_numbers which contains the odd integers from the original array
# and even_numbers which contains the even integers.

# Correct
# 1.
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]

odd_numbers = numbers.select do |number|
                number.odd?
              end

even_numbers = numbers.select do |number|
                number.even?
              end

=begin
We are selecting all the odd numbers in the array and storing it into an odd_numbers variable

We are selecting all the even numbers in the array and storing it into an even_numbers variable
=end

# 2.
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers = []
even_numbers = []

numbers.each do |number|
  if number.even?
    even_numbers << number
  elsif number.odd?
    odd_numbers << number
  end
end

=begin
We iterate through the numbers array and if the number is even then we put it into even aray,
if the number is odd then we put it into the even array
=end

#3.
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers = []
even_numbers = []

for number in numbers
  next if number.odd?
  even_numbers << number
end

for number in numbers
  next unless number.odd?
  odd_numbers << number
end

=begin
Iterate through number in numbers and if the number is even put into an even array.
If the number is odd, put into odd array
=end

# Incorrect
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers, even_numbers = numbers.partition do |number|
                              number.even?
                            end
=begin
Puts the odd and even numbers in the wrong variable becasue partition method returns
an array containing 2 sub arrays.
The first of which contains the elements for the block that evaluates to true.
odd_numbers and even_numbers variables need to be switched
=end
