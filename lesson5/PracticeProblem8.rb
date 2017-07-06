# Using the each method, write some code to output all of the vowels from the strings

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |string|
    string.chars.each do |letter|
      puts letter if vowels.include?(letter)
    end
  end
end

=begin
Iterate through the hash and for each value iterate through the value and for each string
iterate through the strings characters and for each letter
print the letter if the letter includes vowels  
=end
