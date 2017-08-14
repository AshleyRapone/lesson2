# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(string)
  doubled_letters = ''
  string.chars.each do |character|
    doubled_letters << character * 2
  end
  doubled_letters
end


repeater('Hello')
repeater("Good job!")
repeater('')

=begin
Input: string
-split string into array of characters by using the chars method
-set doubled_letters variable to ''
-iterate through the string array and for each character
  -multiply the character by 2 and add it to the doubled_letters variable
-return the doubled_letters variable

=end

# or

def repeater(string)
  array = string.chars.map do |character|
    character * 2
  end
  array.join
end

repeater('Hello')
repeater("Good job!")
repeater('')


def repeater(string)
  repeated_words = ''
  string.chars.each do |char|
    repeated_words << char
    repeated_words << char
  end
  repeated_words
end

repeater('Hello')
repeater("Good job!")
repeater('')
