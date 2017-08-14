# Write a method that takes two Array arguments in which each Array contains a list of numbers, and
# returns a new Array that contains the product of each pair of numbers from the arguments that have the same index.
# You may assume that the arguments contain the same number of elements.

def multiply_list(array1, array2)
  new_array = []
  counter = 0
  loop do
    new_array << array1[counter] * array2[counter]
    counter += 1
    break if counter == array1.size && array2.size
  end
  new_array
end


multiply_list([3, 5, 7], [9, 10, 11])

=begin
Input: two arrays of integers
-create a new array = []
-creat a counter variable and set to 0
-create a loop
  -new_array <<array1[counter] * array2[counter]
  -increment counter by 1
  -break if counter == array1.size && array2.sizzze
-return new_array
=end

def multiply_list(array1, array2)
  array3 = []

  index = 0
  while index < array1.size
    array3 << array1[index] * array2[index]
    index += 1
  end
  array3
end

multiply_list([3, 5, 7], [9, 10, 11])
