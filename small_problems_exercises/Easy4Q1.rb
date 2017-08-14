# Write a method that takes two strings as arguments, determines the longest of the two strings, and
# then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

def short_long_short(string1, string2)
  if string1.length < string2.length
     string2 << string1
     string1 << string2

  elsif string2.length < string1.length
    string1 << string2
    string2 << string1
  end
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')

=begin
Input: two strings


Output: concatenating of shorter string << longerstring

=end


#or

def short_long_short(string1, string2)
  strings = ''
  if string1.length > string2.length
    strings << string2 + string1 + string2
  else
    strings << string1 + string2 + string1
  end
  strings
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')


=begin
Input: two strings
-create an empty string
-if string1 length is greater than string2 length
  concatenate string2 + string1 + string2 and put into strings string
-else
  concatenate string1 + string2 + string1 and put into strings string
-return the strings variable

Output: concatenates shorter string, longer string, and shorter string
=end


def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')
