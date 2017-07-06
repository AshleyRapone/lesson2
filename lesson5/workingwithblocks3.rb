# Explain this code:
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

=begin
Method call map:
                Object: Outer array
                Side effect: None
                Return value:  Yes [1, 3]
                Return value used? No

Block execution: Object:  Each sub array
                 Side effect:  None
                 Return value:  integer at index 0 of sub array
                 Return value used? yes by map used for execution


Method call first:
                  Object: sub array
                  Side effect: None
                  Return value: element at index 0 of sub array
                  Return value used? yes used by puts
Method call puts:
                  Object: element at index 0 of each sub array
                  Side effect: outputs 1 and 3
                  Return value: nil
                  Return value used? No

Method call first:
                  Object: sub array
                  Side effect: No
                  Return value: element at index 0 of sub array
                  Return value used? yes because it is the last value of the block
=end
