# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}
arr.each do |item|
  hash[item[0]] = item[1]
end

=begin
Storage/setup: need to make a new hash

Method: Want to iterate through each item of the array

Block: Want to assign a pair to the new hash: the first item ([item[0]]) as the key and the second item: item[1] as the value
=end
