# Modify the method from the previous exercise so it ignores non-alphabetic characters when
# determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value;
# they just don't count when toggling the desired case.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
      result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

staggered_case('I Love Launch School!')
staggered_case('ALL CAPS')
staggered_case('ignore 77 the 444 numbers')

=begin
Input:
-Input: string
-set result variable to an empty string ''
-set need upper variable to true
-take string and turn it into array of characters
-iterate through the array of characters
  -if char is a-z (detect case)
    -if need upper is true
      -add upcase character to result variable
    -else
      -add downcase charafcter to result variable
    -end
  -set need_upper to false
  -else
    -result += char
  -end
-end
-return result
=end
