# Write a method that takes a String as an argument, and returns a new String that contains
# the original value using a staggered capitalization scheme in which every other character is capitalized,
# and the remaining characters are lowercase.
# Characters that are not letters should not be changed, but count as characters when
# switching between upper and lowercase.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

staggered_case('I Love Launch School!')
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')

=begin
-Input: string
-set result variable to an empty string ''
-set need upper variable to true
-take string and turn it into array of characters
-iterate through the array of characters
  -if need upper is true
    -add upcase character to result variable
  -else
    -add downcase charafcter to result variable
  -end
  -set need_upper to false
-return result
=end

#or

def staggered_case(string)
  swap = []
  characters = string.chars

  index = 0
  while index <= characters.size
    if index.even? && characters[index] =~ /['a-z']/
      swap << characters[index].upcase
    elsif index.odd? && characters[index] =~ /['A-Z']/
      swap << characters[index].downcase
    else
      swap << characters[index]
    end
    index += 1
  end
  swap.join
end


staggered_case('I Love Launch School!')
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')


def staggered_case(string)
  staggered = ''
  index = 0
  while index < string.length
    staggered << string[index].upcase if index.even?
    staggered << string[index].downcase if index.odd?
    index += 1
  end
  staggered
end

staggered_case('I Love Launch School!')
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')
