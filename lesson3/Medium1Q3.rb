# Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you change the loop construct
# (instead of using begin/end/until) to make this work? Note that we're not looking to
# find the factors for 0 or negative numbers, but we just want to handle it gracefully instead
# of raising an exception or going into an infinite loop.

#Correct answer
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

# My answer was this:
  def factors(number)
    dividend = number
    divisors = []
    loop do
    unless dividend == 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
    end
    divisors
  end

# Bonus 1

# What is the purpose of the number % dividend == 0 ?

# Allows you to determine if the result of the division is an integer number (no remainder)

# Bonus 2

# What is the purpose of the second-to-last line in the method (the divisors before the method's end)?

# That is the value we wish to return from the method since the return value of the method is the
# last statement executed
