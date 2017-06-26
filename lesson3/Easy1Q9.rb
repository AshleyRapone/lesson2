# Given the hash below:

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.assoc("Barney")
# Hash#assoc searches through the hash comparing object with the key using == and returns the key-value pair in a two elements array
#or

flintstones.keep_if {|item| item =~ /Barney/}
p flintstones.flatten
