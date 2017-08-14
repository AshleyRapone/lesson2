# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# You may not use any of the methods mentioned above. String#to_i


DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

string_to_integer('4321') # 4321
string_to_integer('570') # 570

=begin
Input: string of numbers
-create constant and have it equal to the hash of strings of intgers as keys and numbers as values
-turn string into array of characters and then transform the array of characters into array of
numbers by referencing the digits value for each characters and put it into variable digits

-set value equal to zero
-iterate through digits and for each digit: take 10 and multiply it by value then add digit and set to value
-return value
Output: numbers
=end 
