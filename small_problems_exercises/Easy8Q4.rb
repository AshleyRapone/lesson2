# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first, then all substrings
# that start at position 1, and so on. Since multiple substrings will occur at each position,
# the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end


def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=begin
Input: create an empty array called result
-From 0 up to string size minus 1 for each index
-take the string from 0 to index and put it in the result array
-return result
=end


=begin
Input: string
-create an empty array called results
-From 0 up to the size of the string iterate through the string and for each start_index
  -create variable called this_substring and set it to the strings start of the index to the last
  -take the results array and concatenate the string by using the subsstrings_at_start method with this_substring as an argument
-return the results array

=end

# or

def substrings(string)
  array = []

  string.length.times do |index|
    this_substring = string[index..-1]
    array << substrings_at_start(this_substring)
  end
  array.flatten
end

substrings('abcde')
