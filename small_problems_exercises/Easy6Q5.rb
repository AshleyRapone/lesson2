# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order.
# Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

def reverse(array)
  new_array = []
  counter = 1
  while counter <= array.size
    new_array << array[-counter]
    counter += 1
  end
  new_array
end

reverse([1,2,3,4])
reverse(%w(a b c d e))
reverse(['abc'])
reverse([])


=begin
Input: array of elements
-set counter to 0
-set new array to []
-create loop
  -break if array size equals 0
  -new_array << array.pop
  -increment counter by 1
-return new array
=end
