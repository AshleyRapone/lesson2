=begin
Given an array of strings representing integers, iterate through all of the items in the array.
If the integer value of the string is odd add it to a new array of odd integer strings.
Once iteration is complete the new array should contain all of the odd integer strings from the original array.
=end


# Correct
# 1.
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

for number in numbers
  if number.to_i.odd?
    odd_numbers.push(number)
  end
end

=begin
-iterates through each number in numbers
  -if the number is odd, put the number into the odd_numbers array
=end

# 2.
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
counter = 0

loop do
  number = numbers[counter].to_i

  odd_numbers << numbers[counter] unless number.even?

  counter += 1
  break if counter == numbers.size
end

=begin
-set number to the each number in numbers by referencing its index and converting it to an integer
-put all of the numbers into the odd numbers array unless there is an even number
-increment counter
-break if counter is equal to array size
=end

# 3.
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

numbers.each do |number|
  odd_numbers << number if number.to_i.odd?
end

=begin
-iterate through each number in numbers
  -if the number to integer is odd then put the number inot the odd_numbers array
=end


# Incorrect
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  odd_numbers << numbers[number] if number.to_i.odd?

  number += 1
end
=begin
Doesnt work becasue it is only taking into account the odd indices, not the actual numbers in the array
=end
