# Within the code below, identify the method represented by some_method:

{a: 1, b: 2, c: 3, d: 4, e: 5}.some_method do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end
# => {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5}

=begin
Each method because the Hash#each returns the original object
=end
