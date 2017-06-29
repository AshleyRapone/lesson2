# Identify all of the code implementations that correctly meet the following set of requirements.

# Given the following hash which contains keys representing countries and values representing the
# capital cities of those countries, return a new hash containing only the key-value pairs where the
# country begins with the letter 'B'.

# Correct

# 1.
countries_and_capitals.each_with_object({}) do |(k, v), obj|
  obj[k] = v if k.chr == 'B'
end
=begins
use each_with_object to create a hash and then iterate through the hash and assign pairs to
another hash if the key (countries) start with "B"
=end

# 2.
def select_countries(hsh)
  sub_set = {}
  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

select_countries(countries_and_capitals)

=begin
A new hash is created for each key (country) in the hash,
if the country starts with B then add it to the new hash
=end

# Incorrect

# 1.
countries_and_capitals.select { |_, country| country[0] == 'B' }

=begin
The block is referring to the hash value instead of the key so it selects the
capitals that start with a B
=end

# 2.
def begins_with_b(string)
  string[0] == 'B'
end

countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end
=begin
The code returns a nested array instead of a hash because the find_all method returns
an array. This can be fixed by calling .to_h on the method
=end
