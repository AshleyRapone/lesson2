# What happens when we modify an array while we are iterating over it?
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin
The output is 1  3

1 is printed out and shift causes 1 to be removed and the numbers array to be [2,3,4]
Since each is compared against the current length of the array it moves on to the next index which is 1 which would be 3
=end

# What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin
The output is 1   2

1 is printed out and pop causes 4 to be removed and the numbers array to be [1,2,3]
It moves on to the next index which is 1 which would be number 2
then 3 gets removed and we are done iterating

=end
