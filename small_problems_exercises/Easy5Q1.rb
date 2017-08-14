# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every character in the string.
# (You may use String#ord to determine the ASCII value of a character.)

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord}
  sum
end


ascii_value('Four score')
ascii_value('Launch School')
ascii_value('a')
ascii_value('')


=begin
Input: string
-create a sum variable set to 0
-Iterate through each character in the string by using the each_char method
  -add char.ord to sum variable
-return the sum variable

Output: integer sum

=end

def ascii_value(string)
  value = 0
  string.chars.each do |char|
    value += char.ord
  end
  value
end

ascii_value('Four score') #== 984
ascii_value('Launch School') #== 1251
ascii_value('a') #== 97
ascii_value('') #== 0
