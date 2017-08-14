# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(array)
  result = []
  last_item = array[0]
  result << array[1..-1]
  result << last_item
  result.flatten
end


rotate_array([7, 3, 5, 2, 9, 1]) # [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) # ['b', 'c', 'a']
rotate_array(['a']) # ['a']
x = [1, 2, 3, 4]
rotate_array(x) # [2, 3, 4, 1]
