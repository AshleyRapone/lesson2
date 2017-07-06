# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b] # arr = [2, [5, 8]]

arr[0] += 2  # arr = [4, [5, 8]]
arr[1][0] -= a  # arr = [4, [3, 8]]

=begin
arr returns [4, [3, 8]]


a = 2  (arr[0] += 2) we are not referencing a, we modified the array, not a
b = [3,8] (arr[1][0] -= a) we are assgining a new object at that index of the array
=end
