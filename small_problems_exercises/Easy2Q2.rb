# Build a program that asks a user for the length and width of a room in meters and
# then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet

SQUARE_METER = 10.7639

def area_of_room
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f

  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f

  area = (length * width).round(2)
  area_square_feet = (length * width * SQUARE_METER).round(2)
  puts "The area of the room is #{area} square meters (#{area_square_feet} square feet)."
end

area_of_room


=begin
-ask user for length
-store answer in variable called length
-ask user for width
-store answer in variable called width
-set variable area to lenth * width
-convert length and width to square feet
  - area * SQUARE_METER
-Print "THe area of the room is _ square meters (_ square feet)"
=end
