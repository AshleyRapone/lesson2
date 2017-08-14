# Write a method that takes an Array as an argument, and
# returns two Arrays that contain the first half and second half of the original Array, respectively.
#If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end

halvsies([1, 2, 3, 4])
halvsies([1, 5, 2, 4, 3])
halvsies([5])
halvsies([])



=begin
Input: array of integers
-set first half variable to array slice of 0 to array size divided by 2 and call ceil method to round up
-set second half variable to array slice of first half variable to array size - first half size
-return array of first half and second half

=end

def halvsies(array)
  center = array.size / 2
  array.partition do |num|
    if array.size.even?
      array.index(num) < center
    elsif array.size.odd?
      array.index(num) < center + 1
    end
  end
end


halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3])# == [[1, 5, 2], [4, 3]]
halvsies([5]) #== [[5], []]
halvsies([]) #== [[], []]
