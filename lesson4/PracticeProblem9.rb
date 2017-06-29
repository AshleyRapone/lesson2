# What is the return value of map in the following code? Why?

{a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

=begin
The return value of map is [nil, "bear"] because map uses the return value of the block to perform transformation
bear was the only value that had more than 3 characters which is why nil was returned for the first item (because 'ant' has
less than 3 characters)
=end
