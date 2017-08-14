def rotate_array(array)
  result = []
  last_item = array[0]
  result << array[1..-1]
  result << last_item
  result.flatten
end

def rotate_rightmost_digits(number, n)
  string_numbers_array = number.to_s.chars
  rotate = string_numbers_array[-n..-1]
  rotated_numbers = rotate_array(rotate)
  numbers = string_numbers_array[0..-n -1] + rotated_numbers
  numbers.join.to_i
end

def max_rotation(number)
  array = number.to_s.chars.size
  array.downto(1) { |index| number = rotate_rightmost_digits(number, index)}
  number
end

max_rotation(735291) #321579
max_rotation(3) # 3
max_rotation(35) # 53
max_rotation(105) # 15 # the leading zero gets dropped
max_rotation(8_703_529_146) # 7_321_609_845
