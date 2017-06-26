# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# It is {a: => "hi there"} informal_greeting is a reference to the original object.
# Since informal_greeting was reassigned to greeting, when we modified informal_greeting to hi there the variable
# was mutated to {a: = > "hi there"}
