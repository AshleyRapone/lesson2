# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34
# The method is returning a different object with a reference to the value 50 which is stored into new_answer
# however the answer variable is not mutated becasause assignment is non-mutating and we did not save the return value
# from the method into the variable answer 
