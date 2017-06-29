# Pick out the minimum age from our current Munster family hash:

ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

ages.values.min
# The return value is 10.

=begin
Storage/setup: Select a value from hash

Method:        We want to use values method because it returns all the value and puts it in an array
               We want to use min method on the values method to return the object with the minimum value

Block:         None

=end
