# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

puts "Enter the first number:"
first_number = gets.chomp.to_i

puts "Enter the second number:"
second_number = gets.chomp.to_i

puts first_number + second_number
puts first_number - second_number
puts first_number * second_number
puts first_number / second_number
puts first_number % second_number
puts first_number ** second_number


=begin
Input: 2 positive integers

Output: prints result of addition, subtraction, product, quitent remainder and power of the two integers
=end

#or

puts "Enter the first number:"
first_number = gets.chomp.to_i

puts "Enter the second number:"
second_number = gets.chomp.to_i

puts "#{first_number} + #{second_number} = #{first_number + second_number}"
puts "#{first_number} - #{second_number} = #{first_number - second_number}"
puts "#{first_number} * #{second_number} = #{first_number * second_number}"
puts "#{first_number} / #{second_number} = #{first_number / second_number}"
puts "#{first_number} % #{second_number} = #{first_number % second_number}"
puts "#{first_number} ** #{second_number} = #{first_number ** second_number}"


def prompt(message)
  "==> " + message
end

puts "Enter the first number:"
firstnum = gets.chomp.to_i

puts "Enter the second number:"
secnum = gets.chomp.to_i

add = firstnum + secnum
subtract = firstnum - secnum
multiply = firstnum * secnum
divide = firstnum / secnum
modulus = firstnum % secnum
power = firstnum ** secnum

puts prompt("#{firstnum} + #{secnum} = #{add}")
puts prompt("#{firstnum} - #{secnum} = #{subtract}")
puts prompt("#{firstnum} * #{secnum} = #{multiply}")
puts prompt("#{firstnum} / #{secnum} = #{divide}")
puts prompt("#{firstnum} % #{secnum} = #{modulus}")
puts prompt("#{firstnum} ** #{secnum} = #{power}")
