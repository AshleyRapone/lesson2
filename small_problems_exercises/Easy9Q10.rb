# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array
# of the correct number of each fruit.

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin
-take list and transform each fruit and quantity to fruit * quantity and flatten the array
=end

def buy_fruit(types)
  fruits = []

  types.each do |subarray|
    subarray[1].times do |time|
      fruits << subarray[0]
    end
  end
  fruits
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin
Input:array of subarrays that each have string and number

-create empty array
-iterate through types and for each subarray
  -call times method on number (subarray[1]) and for each time
  - take the item (subarray[0]) and append to fruits array
-return fruits array

Output: one array with the strings the number of times that was given in the original array
=end

def buy_fruit(array)
  fruits = []
  array.each do |subarray|
    subarray[1].times do
      fruits << subarray[0]
    end
  end
  fruits
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
