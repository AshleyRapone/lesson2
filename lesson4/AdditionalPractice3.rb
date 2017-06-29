# Throw out the really old people (age 100 or older)

ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

ages.keep_if {|_, age| age < 100}
# The return value is {"Herman" => 32, "Lily" => 30, "Eddie" => 10}

=begin
Storage/setup:  Modify hash to not have values over 100

Method:        Use keep_if with age argument becasue we want to keep certain pairs in the hash based on age

Block:         age < 100 becasue we want to keep all pairs with values less than 100

=end
