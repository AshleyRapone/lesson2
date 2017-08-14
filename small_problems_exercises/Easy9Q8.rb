# Create a method that takes two integers as arguments. The first argument is a count, and
# the second is the first number of a sequence that your method will create. The method should return an Array
# that contains the same number of elements as the count argument, while the values of each element will be
# multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number
# can be any integer value. If the count is 0, an empty list should be returned.

def sequence(count, first)
  (1..count).map { |idx| idx * first }
end


sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

=begin
Input: number(count) and number(starting number)
-from starting number to count transform index to index times first number
=end


#or

def sequence(count, start_num)
  array = []
  count.times do |index|
    array << start_num * (index + 1)
  end
  array
end

sequence(5, 1) # [1, 2, 3, 4, 5]
sequence(4, -7) # [-7, -14, -21, -28]
sequence(3, 0) # [0, 0, 0]
sequence(0, 1000000) # []

=begin
Input: 2 numbers(count, starting number )

-create an empty array
-call times method on count and for each index
  -append starting number * (index + 1) to array
-return array 

Output: array number of elements and each element is multiples of start num
=end
