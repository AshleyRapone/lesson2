# Given this data structure write some code to return an array which contains only the hashes
# where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

=begin
Storage/setup: return an array via the select method
Method: Using the select method iterate through the array and for each hash
          -iterate through all of the elements of the hash and for each value
              -iterate through all of the lements of the value and for each number
                -if the number is even return it 
=end
