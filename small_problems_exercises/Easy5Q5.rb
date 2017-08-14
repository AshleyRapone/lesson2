# Given a string that consists of some words and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').squeeze(' ')
end


cleanup("---what's my +*& line?")


=begin
Input: string
-take the string and replace all non-alphabetic characters(i makes the expression case insensitive) with a space
-call squeeze method to get rid of extra spaces

=end


def cleanup(string)
  string.gsub(/[^a-zA-Z]/, ' ')
end

cleanup("---what's my +*& line?")
