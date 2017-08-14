# Write a method that takes two Arrays as arguments, and
# returns an Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

def merge(array1, array2)
  array1 | array2

end


merge([1, 3, 5], [3, 6, 9])

=begin
Input: two Arrays
-use | as union so the result contains no duplicates

=end

def merge(arr1, arr2)
  result = []
  index1 = 0
  index2 = 0

  while index1 < arr1.size
    result << arr1[index1]
    index1 += 1
  end
  while index2 < arr2.size
    result << arr2[index2] unless result.include?(arr2[index2])
    index2 += 1
  end
  result
end

merge([1, 3, 5], [3, 6, 9])
