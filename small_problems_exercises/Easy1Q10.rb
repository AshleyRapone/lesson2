# Write a method that takes two arguments, a positive integer and a boolean, and
# calculates the bonus for a given salary.
# If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.


def calculate_bonus(integer, boolean)
  if boolean == true
    integer / 2
  elsif boolean == false
    0
  end
end




puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)


=begin
Input: a positive integer and a boolean
-if the boolean is true
  -divide integer by 2
-if boolean is false
  -return 0

Output: if the boolean is true half of the integer input will be returned
        if the boolean is false 0 will be returned
=end


#or

def calculate_bonus(number, boolean)
  boolean ? number / 2 : 0
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false) 
puts calculate_bonus(50000, true)


=begin
-Input: positive integer and boolean
-if boolean equals true
  -number / 2
-else
  0
-Output: if boolean is true then half of salary
if boolean is false then 0
=end
