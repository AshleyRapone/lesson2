# Without running the code, identify the matching description.

[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end



=begin
Iterate through the array and for each subarray
  -iterate through the subarray and for each letter
    -change each letter to upcase
=end

=begin
1. INCORRECT
   does not return a flat array
2. INCORRECT
   it does consider the return value of the block
3. CORRECT
   
4. INCORRECT
   the array is changed, just not permenantly

=end
