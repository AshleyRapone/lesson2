# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = (1..integer).reduce(:+)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."

elsif operation == 'p'
  product = (1..integer).reduce(:*)
  puts "The product of the integers between 1 and #{integer} is #{product}"
end


#or

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  answer = (1..integer).reduce(:+)
elsif operation == 'p'
  answer = (1..integer).reduce(:*)
end

case operation
when 's'
  operation = "sum"
when 'p'
  operation = "product"
end


puts "The #{operation} of the integers between 1 and #{integer} is #{answer}."


puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to compute sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
    sum = 1.upto(integer).reduce(:+)
    puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif operation == 'p'
    product = 1.upto(integer).reduce(:*)
    puts "The prduct of the integers between 1 and #{integer} is #{product}."
end
