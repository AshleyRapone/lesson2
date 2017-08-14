# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and
# then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end


multisum(3)
multisum(5)
multisum(10)
multisum(1000)


=begin
Input: integer


Output: integer sum of the multiples
=end

# or

def multisum(number)
  numbers = []
  if number % 3 == 0 || number % 5 == 0
    numbers << number
  end
  numbers.reduce(:+)
end

multisum(3)
multisum(5)
multisum(10)
multisum(1000)

=begin
Input: number
serarch for number % 3 ==0 or number % 5 == 0 between 1 and some other number
-create new array
- if number % 3 == 0 || number % 5 == 0
  put number in array
-return sum of array
Output: sum of the multiples of 3 and 5
=end

def multisum(number)
  sum = 0
  1.upto(number) do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  sum
end

multisum(3)
multisum(5)
multisum(10)
multisum(1000)
