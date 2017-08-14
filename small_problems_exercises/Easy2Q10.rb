# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
array 2 prints out the same thing as array 1 because Array#<< is a destructive method
and after the first iteration the two arrays reference the same thing. So when we modify
the array1 again since it is a destructive method it gets mutated again.

=end
