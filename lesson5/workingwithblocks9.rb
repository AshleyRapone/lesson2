# Break down each triple nested array

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

=begin
The return value of map will be the new array that matches the value of the calling object
The each method does not care about the blocks return value and will return the calling object
=end
