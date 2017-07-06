# Break down each component

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1
      el + 1
    else
      el.map do |n|
        n + 1
      end
    end
  end
end

=begin
The return value is [[[2, 3], [4,5]], [6, 7]]

Want to use map method because we have an uneven nested array which will return a
new array with the same nested levels as the original.
=end
