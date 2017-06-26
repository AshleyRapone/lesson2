# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# There will be an error becauses there is no conversion of the integer to a string.

# To fix this we can either do a integer to string method:
(40 + 2).to_s

#or we can use string interpolation:
puts "the value of 40 + 2 is #{40 + 2}"
