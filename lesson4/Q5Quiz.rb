# This method takes a string in standard sentence case and should return it in camel case:

sentence = 'The sky was blue'
camel(sentence) # => 'TheSkyWasBlue'


# but it contains an error.
# Identify the line of code that is causing the error.

def camel(str)
  words = str.split(' ')
  counter = 0

  while counter > words.size
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end

=begin
while counter > words.size

becasue counter is set at 0 and the words size is 4 so that does not evaluate to true
This is what the code needs to be: while counter < words.size
=end
