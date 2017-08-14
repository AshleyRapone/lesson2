# Write a method that takes a string, and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end


double_consonants('String')
double_consonants("Hello-World!")
double_consonants("July 4th")
double_consonants('')

=begin
Input: string
-set result to empty string
-iterate through each string and for each character
  -put character  into result variable
  -put character again into result variable if the downcase character includes CONSONANTS
-return result variable
=end

CONSONANTS =  %( b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  results = []
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      results << char * 2
    else
      results << char
    end
  end
  results.join
end

double_consonants('String')
double_consonants("Hello-World!")
double_consonants("July 4th")
double_consonants('')
