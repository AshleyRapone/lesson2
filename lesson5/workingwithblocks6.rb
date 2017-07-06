# Explain the code

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

=begin
-Use select method to select each hash in the array
-if the values of each hash has each have a value thats first letter is equal to the key then select it

Since the first hash doesnt have all values equal to the first letter of their associated key it was not selected.

=end
