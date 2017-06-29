# Given the munsters hash below:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional "age_group" key
# that has one of three values describing the age group the family member is in (kid, adult, senior)


munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

puts munsters
# Prints out modified hash

=begin

Storage/setup: transform the hash to add on another hash to the values of the keys

Method:        use each method (dont want to consider the return value of the block) to iterate through the hash
               and use the argument |name, details|

Block:         use case statement for the ages of the hash
               when certain conditions are met we add another section to the hash

=end
