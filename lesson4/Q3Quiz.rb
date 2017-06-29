# Given an array of integers for each integer output all integers from 1 to that integers
# (if the integer were 5 it would output 1,2,3,4,5)

# Correct
# 1.
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = numbers.size

loop do
  number = numbers[-counter]
  for num in 1..number
    puts num
  end

  break if counter == 1
  counter -=1
end

=begin
-Set counter to the size of numbers array
-create loop that sets number to -7 (since we are starting from the end)
-iterate through each number from 1 to the number
  -put number
-break if counter is equal to 1
-subtract from counter

=end

# 2.
numbers = [7, 3, 5, 2, 1, 8, 4]

for number in numbers
  counter = 0

  loop do
    counter += 1
    puts counter

    break if counter >= number
  end
end

=begin
-iterate through each number in numbers array
-set counter to 0
-print counter until counter is greater than or equal to the number
=end

# 3.
numbers = [7, 3, 5, 2, 1, 8, 4]

numbers.each do |number|
  counter = 0
  number.times do
    counter += 1
    puts counter
  end
end

=begin
-iterate through each number in numbers array
  -set counter to 0
  -increment counter and print counter depending on which number in the array you are on
=end

# Incorrect
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = 0

loop do
  number = numbers[counter]
  counter = 0

  loop do
    counter += 1
    puts counter

    break if counter >= number
  end

  counter += 1
  break if counter >= numbers.size
end

=begin
Doesnt work because of the break if statement
counter will print up until it reaches the number which means that technically counter will be bigger than the numbers array size
and the loop will break prematurely  
=end
