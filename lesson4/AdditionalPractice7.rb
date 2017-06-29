# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

puts result
#Prints out{"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}


=begin
Storage/setup: Create a hash
               Create a letters array will all the letters in the alphabet

Method:        Use each method to iterate through the letters array with letter as an argument

Block:         Add each letter that occurs in the string and count it and put it into letter_frequency variable
               If the letter_frequency value is more than 0, put the letter_frequency value equal each letter key
=end
