# Given this data structure write some code to return an array containing
# the colors of the fruits and the sizes of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

=begin
storage/setup: want make a new array via the map method
Method 1: use each method to iterate through the hash and for each value...
Block 1: if value[:type] == 'fruit'
            -Method 2: iterate through each of the value's colors and for each color
            -Block 2: capitalize the color
        or else if the value[:type] == 'vegetable'
            -Upcase the size of the vegetable
=end
