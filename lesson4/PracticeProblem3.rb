# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

=begin
Returns [1,2,3]
Returns a new array containing the items in self for which the given block is not true (falsey)
Since puts always returns nil it returns falsey which is why all of the elements were selected.
=end
