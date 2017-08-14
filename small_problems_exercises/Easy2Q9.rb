# Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? Think about it for a moment before continuing.

# Alice
# Bob

# What does this print out? Can you explain these results?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# BOB
# BOB
# The upcase! method is destructive and mutates the caller and since the variable name points to 'Bob'
# name now references 'BOB' and since save_name references name as well it also gets mutated to 'BOB'
