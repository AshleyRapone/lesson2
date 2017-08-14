# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits.
#For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number;
# double numbers should be returned as-is.

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2

  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center.. - 1]

  if left_side == right_side
    number
  else
    number * 2
  end
end

twice(37) # 74
twice(44) # 44
twice(334433) # 668866
twice(444) # 888
twice(107) # 214
twice(103103) # 103103
twice(3333) # 3333
twice(7676) # 7676
twice(123_456_789_123_456_789) # 123_456_789_123_456_789
twice(5) # 10

=begin
Input: integer

-turn into string: take integer and turn it into a string and store it into string_number variable
-Figure out center of string: divide string_number by 2 and store it into center variable
-Figure out left side of string: take center if if there is a zero put empty string if false take left side of string string_number[0..center - 1]
and store it in variable called left_side
-Figure out right side of string: take string_number and slice it from center to the end and put it in the right_side variable

-if left_side == right_side
  return number
-else
  return number * 2
=end

def twice(number)
  number_string = number.to_s
  center = number_string.size / 2
  left = center.zero? ? '' : number_string[0..center - 1]
  right = number_string[center..-1]
  if number_string.length.even? && left == right
    number
  else
    number * 2
  end
end

twice(37)
twice(44)
twice(334433)
twice(444)
twice(107)
twice(103103)
twice(3333)
twice(7676)
twice(123_456_789_123_456_789)
twice(5)
