# Write a method that combines two Arrays passed in as arguments, and
# returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

def interleave(array1, array2)
  new_array = []
  counter = 0
  loop do
    new_array << array1[counter]
    new_array << array2[counter]
    counter += 1
    break if counter == array1.size && array2.size
  end
  new_array
end

interleave([1, 2, 3], ['a', 'b', 'c'])

=begin
Input: 2 arrays full of items
-create new array and set it to empty
-set counter variable to 0

-create a loop
-asign new _array with first index of first array
-assign new_array with fisrt index of second array
-break if counter equals the sizes of the two arrays
-end
-return the new array
=end

# or

def interleave(array1, array2)
  alternating_array = []
  while array1.size && array2.size > 0
    alternating_array << array1.shift
    alternating_array << array2.shift
  end
  alternating_array
end

interleave([1, 2, 3], ['a', 'b', 'c'])

def interleave(arr1, arr2)
  arr3 = []

  index = 0
  while index < arr1.size && index < arr2.size
    arr3 << arr1[index]
    arr3 << arr2[index]
    index += 1
  end
  arr3
end

interleave([1, 2, 3], ['a', 'b', 'c'])
