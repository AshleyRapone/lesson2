# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.
# You may assume that the argument will always be a valid integer that is greater than 0.

def sequence(number)
  (1..number).to_a
end

# or

def sequence(number)
  array = []
  number.times { |time| array << (time + 1) }
  array
end

sequence(5) # [1, 2, 3, 4, 5]
sequence(3) # [1, 2, 3]
sequence(1) # [1]

=begin
Input: number

-create an empty array
-call times method on number and for each time put (time + 1) into array
-return array

Output: array of number
=end

def sequence(number)
  array = []
  1.upto(number) { |integer| array << integer }
  array
end

sequence(5)
sequence(3)
sequence(1)
