# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr.map! do |num|
  num.to_i
end

arr.sort do |a,b|
  b <=> a
end

# Correct answer
arr.sort do |a, b|
  b.to_i <=> a.to_i
end

=begin
Need to convert from string to integer or else the computer will look at the string's first letter and organize it that way 
=end
