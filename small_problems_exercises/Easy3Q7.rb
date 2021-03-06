# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
# The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

def oddities(array)
  new_array = []

  index = 0
  while index < array.size
    new_array << array[index] if index.even?
    index += 1
  end
  new_array
end

oddities([2, 3, 4, 5, 6])
oddities(['abc', 'def'])
oddities([123])
oddities([])
