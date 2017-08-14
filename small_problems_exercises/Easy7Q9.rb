# Write a method that takes two Array arguments in which each Array contains a list of numbers, and
# returns a new Array that contains the product of every pair of numbers that can be formed between
# the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])


=begin
-Input: two arrays
-create a new products array and set it to empty
-iterate through the first array and for each item_1
  -iterate through the second array and for each item_2
    -multiple item1 and item 2 and put into new array
-return the array
=end
