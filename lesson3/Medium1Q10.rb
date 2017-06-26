# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the output of this code:

puts bar(foo)

# no

=begin
the method foo returns "yes"
for the bar method "yes" == "no" is false so the method returns "no"
=end
