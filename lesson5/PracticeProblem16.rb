# A UUID is a type of identifier often used as a way to uniquely identify items...
# which may not all be created by the same system.
# That is, without any form of synchronization, two or more separate computer systems can create new items
# and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections
# like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

=begin
set a characters array
for each digit from 0 to 9 put the digits into the characters array
for each digit from a to f put the digits into the characters array

set uuid to empty
set sections array to how many digits we want grouped together
by using each with index array iterate through sections and for each section and index
  -return the section the times by adding the amount tof characters for each sample
add a dash to uuid unless the index is greater than or equal to the size of the sections minus 1
=end
