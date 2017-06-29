# Turn this array into a hash where the names are the keys and the values are the positions in the array

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

puts flintstones_hash
# Prints out {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}


=begin
Storage/setup: Create a hash to put the array into

Method:        Since you want to know position each_with_index is good to use
               each_with_index = calls block with 2 arguments the, item and its index

Block:         Want to set hash[name] = index to account for the names as keys and the indices as values for the new hash
=end
