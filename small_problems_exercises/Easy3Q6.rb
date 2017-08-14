# The || operator returns true if either or both of its operands are true, false if both operands are false.
# The && operator returns true if both of its operands are true, and false if either operand is false.
# This works great until you need only one of two conditions to be true, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and
# returns true if exactly one of its arguments is true, false otherwise.

def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end

xor?(5.even?, 4.even?)
xor?(5.odd?, 4.odd?)
xor?(5.odd?, 4.even?)
xor?(5.even?, 4.odd?)

#or

def xor?(arg1, arg2)
  (arg1 == true && arg2 == false) || (arg1 == false && arg2 == true)
end

xor?(5.even?, 4.even?)
xor?(5.odd?, 4.odd?)
xor?(5.odd?, 4.even?)
xor?(5.even?, 4.odd?)

#or

def xor?(arg1, arg2)
  (arg1 == true && arg2 == false) || (arg1 == false && arg2 == true) ? true : false
end

xor?(5.even?, 4.even?)
xor?(5.odd?, 4.odd?)
xor?(5.odd?, 4.even?)
xor?(5.even?, 4.odd?)

=begin
Input: two arguments
-if arg1 == true and arg2 == false
  true
if arg2 == true and arg1 == false
  true
-if arg1 && arg2 == true
  false
-if arg1 && arg2 == false
 false

Output: true or false
=end
