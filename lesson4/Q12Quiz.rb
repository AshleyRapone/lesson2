# Within the code below, identify the method represented by some_method:

['a', 'b', 'c'].some_method do |item|
  puts item
end
# => []

=begin
Select method because puts items always returns nil which is evaluated as falsey which causes
select to return empty array
=end
