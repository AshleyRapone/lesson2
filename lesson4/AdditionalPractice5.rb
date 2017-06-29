# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index {|name| name.start_with?("Be")}
# The return value is 3

=begin
Storage/setup: Select the index of a particular item in an array

Method:        Index method returns the index of the first object for which the block returns true

Block:         Use name as argument to select the name that starts with "Be" to return the index

=end
