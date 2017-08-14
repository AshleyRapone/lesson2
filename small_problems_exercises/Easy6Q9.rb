# Write a method named include? that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not.
# You may not use the Array#include? method in your solution.

def include?(array, value)
  !!array.find_index(value)
end

include?([1,2,3,4,5], 3)
include?([1,2,3,4,5], 6)
include?([], 3)
include?([nil], nil)
include?([], nil)

=begin
Input: array of numbers and number
-use find index method on array to scan the array for the first element that has the value and return it
-use !! to return the value to true or false
=end


def include?(array, num)
  result = []
  array.each do |item|
    result << item if item == num
  end
  if result.size > 0
    true
  else
    false
  end
end

include?([1,2,3,4,5], 3) #== true
include?([1,2,3,4,5], 6)# == false
include?([], 3) #== false
include?([nil], nil)# == true
include?([], nil) #== false
