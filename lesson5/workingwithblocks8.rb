# Example of selecting different items with a nested array

# If we want to select integers greater than 13 but strings less than 6 characters.

[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]

=begin
We want to use map method to return a new array containing the selected values.
We then use the select method to select each item out of each sub array to return new array
=end
