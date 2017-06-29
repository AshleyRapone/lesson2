# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3]
end
# The return value ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]

=begin
Storage/setup: Transform the array

Method:        Use map becasue map replaces the element value returned by the block

Block:         Use name as argument becasue we want to return the first 3 characters in each name of the array

=end
