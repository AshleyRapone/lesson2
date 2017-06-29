# Add up all of the ages from the Munster family hash:

ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

total_ages = 0
ages.each {|_,age| total_ages += age}
total_ages
# 6174 is returned

=begin
Storage/setup: Create a variable to store the sums of the ages in

Method:        Want to iterate through the hash and select only the age values

Block:         Want to add of the age values and put it in the total_ages variable

=end
