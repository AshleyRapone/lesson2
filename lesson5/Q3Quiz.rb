# Given the code below, select all the valid ways to return the value for the hash key :three.

arr = [
  {one: '1', two: 2},
  [{four: 5, three: 6}, :three],
  :three,
  {2=>:two, 3=>:three}
]

arr[3][3]

=begin
1. arr[1][0][:three]
   arr[1] = [{four: 5, three: 6}, :three]
   arr[1][0] = {four: 5, three: 6}
   arr[1][0][:three] = 6
   CORRECT

2. arr[1][1]
   arr[1] = [{four: 5, three: 6}, :three]
   arr[1][1] = :three
   This is not a key it is a symbol
   INCORRECT

3. arr[2]
   :three
   This is not a key it is a symbol
   INCORRECT

4. arr[3][3]
   arr[3] = {2=>:two, 3=>:three}
   arr[3][3] = :three
   This :three is a value not a key
   INCORRECT
=end
