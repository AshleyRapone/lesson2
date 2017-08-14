# Write a method that returns a list of all substrings of a string that start at the
# beginning of the original string. The return value should be arranged in order from
# shortest to longest substring.

def substrings_at_start(string)
  characters_array = []
  characters_string = ''

  string.chars.each do |char|
    characters_string += char
    characters_array << characters_string
  end
  characters_array
end

substrings_at_start('abc')
substrings_at_start('a')
substrings_at_start('xyzzy')


=begin
Input: string
-set characters array = []
-set characters_string variable to = ''
-take the string and turn it into an array of characters by using the chars method
-iterate through the array of characters and for each character
  -put the character into the characters_string variable
  -put the characters string variable into the characters array
-return the characters array
=end


def substrings_at_start(string)
  array = []

  string.length.times do |index|
    array << string[0..index]
  end
  array
end

substrings_at_start('abc')
substrings_at_start('a')
substrings_at_start('xyzzy')

# or

def substrings_at_start(string)
  array = []
  strings = ''

  string.chars.each do |char|
    strings = strings + char
    array << strings
  end
  array
end

substrings_at_start('abc')
substrings_at_start('a')
substrings_at_start('xyzzy')
