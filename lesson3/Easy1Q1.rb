# What would you expect the code below to print out?

numbers = [1,2,2,3]
numbers.uniq

puts numbers

=begin
It prints out
1
2
2
3

The method did not mutate the numbers array 

It returns [1,2,3]
Array#uniq returns a new array by removing duplicate values in self

=end
