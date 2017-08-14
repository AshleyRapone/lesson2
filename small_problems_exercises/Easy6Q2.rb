# Write a method that takes an array of strings, and returns an array of the same string values,
# except with the vowels (a, e, i, o, u) removed.

def remove_vowels(array)
  new_array = []
  array. each do |word|
    word.delete!('aeiouAEIOU')
    new_array << word
  end
  new_array
end



remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white))
remove_vowels(%w(ABC AEIOU XYZ))

=begin
Input: input array of strings
-create a new array
-iterate through the array and for each word
  -delete the vowels by using the delete method and vowels as an argument
  -add word to new array
-return new array

=end


def remove_vowels(array)
  array.map do |word|
    word.delete('aeiouAEIOU')
  end
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white))
remove_vowels(%w(ABC AEIOU XYZ))
