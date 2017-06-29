# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

=begin
We can look #count up in Ruby-docs.
Count returns the number of elements.
If an argument is given, it counts the number of element which equal to the object
If a block is given, counts the number of elements for which the block returns a true value
Count considers the truthiness of the block's return value

It returns 2
=end
