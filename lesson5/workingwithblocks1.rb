# What is happening in this piece of code?

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]


=begin
The method each is being called on the outer array
For each sub-array print out the number at the first index
The return value is the original array because the return value of the block is puts which is nil however
each method always returns the original object
=end
