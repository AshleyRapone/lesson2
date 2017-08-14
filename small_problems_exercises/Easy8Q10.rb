# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
# If the argument has an odd length, you should return exactly one character.
# If the argument has an even length, you should return exactly two characters.

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end


center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

=begin
Input: string
-set center_index variable to half of the size of the string
-if string size is odd
  reference the center character: string[center_index]
-else
  perform string slicing: string[center_index - 1, 2]
=end

# or

def center_of(string)
  center = string.length / 2
  if string.length.odd?
    string[center]
  elsif string.length.even?
    string[center - 1, 2]
  end
end

center_of('I love ruby')
center_of('Launch School')
center_of('Launch')
center_of('Launchschool')
center_of('x')


def center_of(string)
  center = string.length / 2
  if string.length.odd?
   string[center]
 else
   string[center - 1..center]
 end
end

center_of('I love ruby')
center_of('Launch School')
center_of('Launch')
center_of('Launchschool')
center_of('x')
