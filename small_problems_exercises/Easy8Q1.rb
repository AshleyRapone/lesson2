# Write a method that takes an Array of numbers and then returns the sum of the sums of each
# leading subsequence for that Array. You may assume that the Array always contains at least one number.

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end


sum_of_sums([3, 5, 2])
sum_of_sums([1, 5, 7, 3])
sum_of_sums([4])
sum_of_sums([1, 2, 3, 4, 5])

=begin
Input: array of numbers
-create sum variable
-for 1 upto the size of the numbers array count
  -put the numbers from the beginning of the index to the count and add it to the sum total variable
-return the sum_total variable

=end

# or

def sum_of_sums(numbers)
  sum = 0
  numbers.size.times do |index|
    sum += numbers[0,index + 1].reduce(:+)
  end
  sum
end


sum_of_sums([3, 5, 2])
sum_of_sums([1, 5, 7, 3])
sum_of_sums([4])
sum_of_sums([1, 2, 3, 4, 5])



def sum_of_sums(array)
  sum = 0
  index = 0
  while index < array.size
    sum += array[0..index].reduce(:+)
    index += 1
  end
  sum
end

sum_of_sums([3, 5, 2])
sum_of_sums([1, 5, 7, 3])
sum_of_sums([4])
sum_of_sums([1, 2, 3, 4, 5])

def sum_of_sums(array)
  sum = 0
  array.size.times do |index|
    sum += array[0..index].reduce(:+)
  end
  sum
end

sum_of_sums([3, 5, 2])
sum_of_sums([1, 5, 7, 3])
sum_of_sums([4])
sum_of_sums([1, 2, 3, 4, 5])
