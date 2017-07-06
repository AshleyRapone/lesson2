# In the following array, a, b, c and d are variables representing objects to be sorted:

[a, b, c, d]

# Given the following return values when we compare these variables:

a <=> b # => -1
c <=> b # => 0
d <=> c # => 1

# In what order would we expect the items in the array to be if we called sort on the array?
# (Assume that the objects in question are defined in such a way that they have a set, linear order)

=begin
[a, b, c, d]
a <=> b   left side comes first[a, b]
c <=> b   Equal [a, b, c]
d <=> c   Right comes first [a, b, c, d]
=end
