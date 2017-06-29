# Identify all the code samples which are examples of selection.

# Correct

# 1.
hsh = {a: 'apple', b: 'pear', c: 'orange', d: 'kiwi', e: 'banana'}
counter = 0

new_hsh = {}

for letter, fruit in hsh
  new_hsh[letter] = fruit if fruit.size > 4
end

=begin
The new collection contains a subsection of the original collection

We selected to put items in the new hash if the value was greater than 4 characters
=end

# 2.
def some_method(words)
  arr = []
  counter = 0

  loop do
    word = words[counter]
    arr << word if word.size < 4

    counter += 1
    break if counter == words.size
  end

  arr
end

poem = %w(April is the cruelest month)
some_method(poem)

=begin
The new collection contains a subsection of the original subsection

We selected to put items in the new array if the item was less than 4 characters
=end

# Incorrect

# 1.
arr = [1, 2, 3, 4, 5]
counter = 0

new_arr = []

loop do
  num = arr[counter]
  if num >= 3
    new_arr << num
  else
    new_arr << num * 2
  end

  counter += 1
  break if counter == arr.size
end

=begin
This is transformation because the same # of elements are in the new array;
however some are being multiplied by 2 where as some others are not
=end

# 2.
num_arr = [2, 4, 7, 8, 11, 15]
counter = 0

until counter == num_arr.size
  puts num_arr[counter] + 1

  counter += 1
end

=begin
This is not selection or transformation
This is just iteration through the num_arr with a value being output for each element in the array
(the array remains the same)
=end
