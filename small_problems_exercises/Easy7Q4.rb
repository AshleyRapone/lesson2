# Write a method that takes a string as an argument and returns a new string in which every
# uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(string)
  array = []
  string.chars.map do |char|
    if char == char.downcase
      array << char.upcase
    elsif char == char.upcase
      array << char.downcase
    else
      array << char
    end
  end
  array.join
end

swapcase('CamelCase')
swapcase('Tonight on XYZ-TV')

def swapcase(string)
  characters = string.chars.map do |char|
      if char == char.downcase
        char.upcase
      elsif char == char.upcase
        char.downcase
      else
        char
      end
  end
  characters.join
end



swapcase('CamelCase')
swapcase('Tonight on XYZ-TV')

=begin
Input: string
-create an empty array
-split the string into an array of words by using the split method
-iterate through the array of words and for each word
  -call chars method on word
  -iterate through the chars and for each char
    -if char == char.downcase
      array << char.uppercase
    -if char == char.uppercase
      array< char.downcase
-return array.join(' ')


=end
