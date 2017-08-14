# Write a method that takes a first name, a space, and a last name passed as a single String argument, and
# returns a string that contains the last name, a comma, a space, and the first name.

def swap_name(name)
  name_array = name.split
  "#{name_array[-1]}, #{name_array[0]}"
end

swap_name('Joe Roberts')


# or

def swap_name(name)
  name.split.reverse.join(', ')
end

swap_name('Joe Roberts') # Roberts, Joe

=begin
Input:string

-take name and turn into array of words
-reverse the words
-join the words with ', '

Output: reversed word string
=end
