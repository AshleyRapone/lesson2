# Explain this code:
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

=begin
- The map method is being called on a mulitdimensional array and the arr argument
  is begin passed to the sub arrays
- The block prints out the number at the first index of each array
- The return value is [nil, nil] because the map method returns a new array of the transformation
  of the orginal array, however nothing got transformed so nil is returned for each iteration 

=end
