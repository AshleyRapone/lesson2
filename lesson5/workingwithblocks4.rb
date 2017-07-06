# Explain the code:
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

=begin

Variable:    Object: n/a
             side effect: None
             return value: [[18,7], [3, 12]]
             return value used? No

Each method:
            object: the outer array
            side effect: None
            return value: Original array [[18, 7], [3, 12]]
            Return value used? yes used my variable

Block:
            object: the sub array
            side effect: None
            return value: each sub array
            Return value used? No

Each method:
            object: each element in sub array in the iteration of outer block
            side effect: None
            return value: original subarray
            Return value used? Yes used to determine outer block value
Block:
            object: number in subarray
            side effect: None
            return value: nil
            Return value used? No

Conditional if:  object: element in the subarray
                 side effect: None
                 return value: nil
                 return vallue used? Yes used to etermine return value of inner block

puts method:
            object: number
            side effect: prints 18  7   12
            return value: nil
            Return value used? yes
=end
