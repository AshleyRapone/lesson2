# Figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each do |person, info|
  if info["gender"] == "male"
    total_age += info["age"]
  end
end
total_age

=begin
For each person and info in the hash:
  -if the gender info equals male, then add the ages info into total_ages variable
=end
