# What is the block's return value in the following code?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

=begin
The return value of the last statement evaluated is 1 and the last 2 spots have nil because numbers 2 and 3 return false
[1, nil, nil]
=end
