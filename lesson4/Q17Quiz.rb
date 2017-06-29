# Carefully examine the following code example.

flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
flavors.reject { |flavor| puts flavor }
# Based on your observations of the code example, select all statements below which are true.

=begin
reject considers only the truthiness of the block's return value because reject returns items
for which the block is not true so falsey
=end
