# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

=begin
{"a" => "ant", "b" => "bear", "c" => "cat"}
The object is passed into the block and is returned at the end of each iteration
It returns the initially given object; however our object was modified within the block and now contains three key-value pairs
=end
