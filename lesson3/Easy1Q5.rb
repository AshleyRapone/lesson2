# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.

(10..100).cover?(42)
# returns true if the object is between the begin and end of the range

# or

(10...100).include?(42)

# returns true if object is an element of the range
