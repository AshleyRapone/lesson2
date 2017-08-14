# Write a method that takes two arguments: the first is the starting number, and
# the second is the ending number. Print out all numbers between the two numbers, except if a
# number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and
# finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(start_num, end_num)
  array = []
  (start_num..end_num).each do |number|
    if number % 3 == 0 && number % 5 == 0
      array << 'FizzBuzz'
    elsif number % 3 == 0
      array << 'Fizz'
    elsif number % 5 == 0
      array << 'Buzz'
    else
      array << number
    end
  end
  array.join(', ')
end

fizzbuzz(1, 15) # # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=begin
Input: a start number and an end number
-set a range of start_number to end_number and iterate through them and for each number
  -if number % 3 && number % 5
    -print "FizzBuzz"
  -if number % 3 == 0
    print "Fizz"
  -if number % 5
    print "Buzz"
  -else print number
-end
=end
