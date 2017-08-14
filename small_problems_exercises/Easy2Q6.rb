# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

(1..99).each { |number| puts number if number % 2 != 0 }

=begin
-Iterate through (1..99) and for each odd number print it

Output: print odd numbers (1..99) on separate lines
=end

#or

100.times { |number| puts number if number % 2 != 0 }


 1.upto(99) { |number| puts number if number.odd? }
