# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
  color == "blue" || color == "green"
end

# Ruby will automatically evaluate statements so you dont need if and
# Ruby will automatically return the last evaluable line of code in a method
