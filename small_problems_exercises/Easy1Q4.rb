# Write a method that counts the number of occurrences of each element in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# Once counted, print each element alongside the number of occurrences.

def count_occurrences(vehicles)
  occurences = {}

  vehicles.each do |vehicle|
    occurences[vehicle] = vehicles.count(vehicle)
  end

   occurences.each do |vehicle, count|
     puts "#{vehicle} => #{count}"
   end
end

count_occurrences(vehicles)

def count_occurrences(vehicles)
  occurences = Hash.new(0)
  vehicles.each do |vehicle|
    occurences[vehicle] += 1
  end
  occurences 
end
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)

=begin
-Input: array of vehicles
-create a hash
-iterate through the vehicles array and for each vehicle
  -put the vehicle in the hash as a key
  -put the count of each vehicle in vehicles as a value
-iterate through the hash and print out the vehicle(key) and count(value)
-Output: printed hash of vehicle as key and number of occurrences as value
=end
