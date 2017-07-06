# Given the following data structure, return a new array containing the same sub-arrays as the original
# but ordered logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# My answer
arr.sort do |a, b|
    b <=> a
end

=begin
storage/setup:

Method: want to return a new array so use sort

Block: want to sort in descending order of the subarrays
=end

# Correct answer
arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

=begin
Want to sort by each subarray
for each subarry we want to select the number that is odd 
=end
