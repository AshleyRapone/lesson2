# Within the code below, identify the method represented by some_method:

[1, 2, 3, 4, 5].some_method do |num|
  num + 1
end
# => []

=begin
None.

If reject was used then the empty array would be returned because reject returns a new array
containing items in self for which the block is not true (the block evaluates to true
hence the empty array )
=end
