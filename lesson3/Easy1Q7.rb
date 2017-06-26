# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

# This gives us a string that looks like a "recursive" method call:

"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

# If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call

puts eval(how_deep)

# what will be the result?

# The result is 42

=begin
The math of the recursive method call is:
number = 2
number + 8 = 10
8 + 2 = 10
10 + 8 = 18
18 + 8 = 26
26 + 8 = 34
34 + 8 = 42
=end
