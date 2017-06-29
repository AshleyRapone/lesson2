# Identify all the code samples which are not examples of transformation.

# Correct

# 1.
def star_method(stars)
  arr = []
  counter = 0

  until counter == stars.size
    star = stars[counter]
    arr << star if star.size > 4

    counter += 1
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
=begin
This is selection.
We are selecting items to put in the new array by seeing how big each item is.
=end

#2.
def star_method(stars)
  for star in stars
    star.downcase
  end
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)

=begin
This is not selection or transformation.
This is iteration we are putting each element in the array as downcase however
it is not mutating the array
=end

# Incorrect

#1.
def star_method(stars)
  arr = []
  stars.each do |star|
    arr.push(star.upcase)
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)

=begin
This is transformation because we are pushing each upcase item in the array into a new array
=end

#2.
def star_method(stars)
  arr = []
  counter = 0

  until counter == stars.size do
    arr << stars[counter][0, 3]

    counter += 1
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)

=begin
This is transformation becasue we are grabbing 3 characters from the array and pushing all of them into a new array 
=end
