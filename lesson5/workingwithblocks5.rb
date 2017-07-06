# Explain each line of code:

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# This returns [[2, 4], [6, 8]]

=begin

Outer map method:
                  Object: outer array
                  side effect: None
                  return value: New transformed array
                  return value used? No

outer block:
                  Object: outer subarray
                  side effect: No
                  return value: [[2,4],[6,8]]
                  return value used? Yes

Inner map method:
                  Object: subarray
                  side effect: None
                  return value: [[2, 4], [6, 8]]
                  return value used? Yes
Inner block:
                  Object: number in sub arrays
                  side effect: None
                  return value: integer
                  return value used? Yes

num * 2:
                  Object: n/a
                  side effect: None
                  return value: integer
                  return value used? Yes
=end
