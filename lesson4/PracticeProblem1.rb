# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

=begin
Return [1, 2, 3]
-select performs selection based on truthiness of the blocks return value
-The return value is 'hi' which is truthy
-Select will return a new array containing all of the elements in the original array
=end
