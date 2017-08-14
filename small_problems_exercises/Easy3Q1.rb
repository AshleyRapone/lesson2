# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

puts "Enter 1st number:"
number1 = gets.chomp

puts "Enter 2nd number:"
number2 = gets.chomp

puts "Enter 3rd number:"
number3 = gets.chomp

puts "Enter 4th number:"
number4 = gets.chomp

puts "Enter 5th number:"
number5 = gets.chomp

puts "Enter 6th number:"
number6 = gets.chomp

array = []
array.push(number1).push(number2).push(number3).push(number4).push(number5)

if array.include?(number6)
  searching = 'appears'
else
  searching = 'does not appear'
end

puts "The number #{number6} #{searching} in #{array}."

=begin
Input: Enter 6 separate numbers
-Ask user for 6 numbers
-store answers in separate variables
-make a numbers array and store the numbers in the array
-if last variable is included in the items in the array then return 'appears'
-if last variable is not included in the items in the array then return does not appear
-print out statement

Output: print if the 6th number is duplicate from the first five numbers
=end
