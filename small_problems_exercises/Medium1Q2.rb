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

rotate_rightmost_digits(735291, 1) # 735291
rotate_rightmost_digits(735291, 2) # 735219
rotate_rightmost_digits(735291, 3) # 735912
rotate_rightmost_digits(735291, 4) # 732915
rotate_rightmost_digits(735291, 5) # 752913
rotate_rightmost_digits(735291, 6) # 352917
