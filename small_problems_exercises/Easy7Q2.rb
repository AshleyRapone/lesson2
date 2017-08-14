# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one the number of characters that are uppercase letters, and one the number of characters that are neither.

def letter_case_count(string)
  count = {}
  string.split.each do |word|
    word.chars.each do |char|
      if char == char.downcase
        count[lowercase:] += 1
      elsif char == char.upcase
        count[uppercase:] += 1
      else
        count[neither:] += 1
      end
    end
  end
count
end

letter_case_count('abCdef 123')
letter_case_count('AbCd +Ef')
letter_case_count('123')
letter_case_count('')


=begin
Input: string
-create an empty hash Hash.new(0)
-take string and split into array of words using the split method
-iterate throught the array of words and for each word
  -call chars on word
  -iterate through the array of chars and for each char
    -if char equals char.downcase
      -assign it to lowerase key: hash[lowercase:] += 1
    -if char equals char.uppercase
      -assign it to uppercase key: hash[uppercacse:] +=1
    if char != ('A-Aa-z')
      -assing it to neither key: hash[neighter:] +=1
-return hash

=end

def letter_case_count(string)
  hash = {}
  hash[:lowercase] = string.count('a-z')
  hash[:uppercase] = string.count('A-Z')
  hash[:neither] = string.count('^a-zA-Z')
  hash
end

letter_case_count('abCdef 123')
letter_case_count('AbCd +Ef')
letter_case_count('123')
letter_case_count('')
