# Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_left_of_work = retire_age - age
retire_year = current_year + years_left_of_work

puts "It's 2017. You will retire in #{retire_year}."
puts "You have only #{years_left_of_work} years of work to go!"
