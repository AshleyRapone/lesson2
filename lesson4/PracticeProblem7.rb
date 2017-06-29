# What is the block's return value in the following code? How is it determined?
# Also, what is the return value of any? in this code.
# What gets output by this code?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

=begin
The return value of the block is the value of the last expression which would be true
since odd? returns true if the intergers is an odd number


The any? method returns true if the block ever returns a value other than false or nil

The code outputs 1 because any? stops iterating after this point because there is an odd number in the array
=end
