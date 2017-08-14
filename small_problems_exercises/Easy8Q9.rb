# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

def reversed_number(number)
  number.to_s.reverse.squeeze('0').to_i
end

reversed_number(12345)
reversed_number(12213)
reversed_number(456)
reversed_number(12000)
reversed_number(1)

=begin
Input: number
-take number and turn it into a string
-reverse the string
-get rid of extra 0
-take string and turn it to integer

=end

#or

def reversed_number(number)
  number.to_s.reverse.to_i
end

reversed_number(12345)
reversed_number(12213)
reversed_number(456)
reversed_number(12000)
reversed_number(1)
