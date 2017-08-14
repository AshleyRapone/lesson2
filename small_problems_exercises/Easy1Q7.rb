# Write a method that takes one argument, a positive integer, and
# returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

def stringy(integer)
  array = []
  counter = 0
  while counter < integer
    counter += 1
    array << '1' if counter.odd?
    array << '0' if counter.even?
  end
  array.join
end


puts stringy(6) # '101010'
puts stringy(9) # '101010101'
puts stringy(4) # '1010'
puts stringy(7) # '1010101'

=begin
-input: a positive integer
-create a new array
-set a counter to 0
-while counter is less than integer
  - increment counter by 1
  -if counter is odd put '1' into the array
  -if counter is even put '0' into the array
-return the array joined
-Output: string of alternating 1s and 0s starting with 1 (lenght should match given integer)

=end

#or

def stringy(integer)
  strings = ''

  counter = 0
    while counter < integer
    counter += 1
      if counter.odd?
        strings << '1'
      else
        strings << '0'
      end
    end
  strings
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

=begin
Input: positive integer
-initialize a counter variable
-initialize an empty string
-make a loop
  -increment counter by 1
  -break if counter is greater than integer
  -if counter is odd
    put '1' into strings
  -else
    put '0' into strings
-return strings

Output:
=end

def stringy(number)
  array = []
  number.times do |time|
    if time.even?
      array << '1'
    elsif time.odd?
      array << '0'
    end
  end
  array.join
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)
