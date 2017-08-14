# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(minutes)
  minutes = minutes %   MINUTES_PER_DAY
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end


time_of_day(0)
time_of_day(-3)
time_of_day(35)
time_of_day(-1437)
time_of_day(3000)
time_of_day(800)
time_of_day(-4231)

=begin
-create minutes per hour constant and set to 60
-create hours per day constant and set to 24
-create minutes per day constant and set it to minutes per day * minutes per hour
-set time variable to time modulus minutes per day
-set hours and minuts variable to time divmod which divides time is divided into 60 and then time modulus to 60
-create format of of the hours and minute

=end
