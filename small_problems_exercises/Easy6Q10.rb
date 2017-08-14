# Write a method that takes a positive integer, n, as an argument, and
# displays a right triangle whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end
# at the lower-left of the triangle, and the other end at the upper-right.

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)

=begin
-set space variable to num - 1
-set stars variable to 1
-for number of times for each times
  print ' ' * spaces plus '*' * stars
  -minus spaces by 1
  -add stars by 1

=end

def triangle(num)
  space = ' '
  star = '*'
  (num + 1).times do |time|
    puts space * (num - time) + (star * time)
  end
end

triangle(5)
triangle(9)
