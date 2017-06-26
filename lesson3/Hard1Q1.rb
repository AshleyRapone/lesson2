# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

puts greeting

# The greeting is nil
# If you initialize a local variable within an if block even if the if block doesnt
# get executed the local variable is initialized to nil
