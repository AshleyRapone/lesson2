# Write a method that takes an Array as an argument, and reverses its elements in place;
# that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end


reverse!([1,2,3,4])
reverse!(%w(a b c d e))
reverse!(['abc'])
reverse!([])


=begin
Input: array of items
-set left index variable to 0
-set right index variable to -1
-while left index is less than half of the array size
  -set the arrays left index and arrays right index to the opposite of each other
  -increment left index by 1
  -subtracet righ index by 1
-return original array
=end


def reverse!(array)
  index1 = 0
  index2 = -1

  loop do
    if array.size.odd?
      array[index1], array[index2] = array[index2], array[index1]
      index1 += 1
      index2 -= 1
      break if index1 >= array.size/2
    else
      array[index1], array[index2] = array[index2], array[index1]
      index1 += 1
      index2 -= 1
      break if index1 >= array.size/ 2 - 1
    end
  end
  array
end

list = [1,2,3,4]
reverse!(list) # => [4,3,2,1]


list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]


list = ['abc']
reverse!(list) # => ["abc"]


list = []
reverse!(list) # => []
