# Write a method that takes a string argument and returns a new string that contains the value
# of the original string with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

=begin
Input: string
-set index variable to 0
-set crunch variable to empty string
-while index is less than or equal to the string length minus 1
  -add the string[index] to the variable unless the string[index] is equal to the next index
  -increment index
-return crunch variable
=end

def crunch(string)
  characters = string.chars
  array = []

  index = 0
  loop do
    break if index > characters.size
      array << characters[index] if characters[index] != characters[index + 1]
      index += 1
   end
   array.join
end


crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
crunch('4444abcabccba') #== '4abcabcba'
crunch('ggggggggggggggg') #== 'g'
crunch('a') #== 'a'
crunch('')# == ''
