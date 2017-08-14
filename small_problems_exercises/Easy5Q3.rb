# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.


HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end



after_midnight('00:00')
before_midnight('00:00')
after_midnight('12:34')
before_midnight('12:34')
after_midnight('24:00')
before_midnight('24:00')

=begin
Input: time string
-set constant of hours per day to 24
-set constant of minutes per day to hours per day times minutes per hour

-create aftermidnight method with time string as an argument
-set hours and minuts variable to the time split by the colon
-transform each string into an integer
-mulitply hous and minuts per hour by minutes per hour plus minutes modulus minutes per day

-create beforemidnight method with time string as an argument
-create variable and set it equal to minutes per day - after midnight
-set variable to 0 if it equals minutes per day
-return variable

=end

HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def after_midnight(string)
  return 0 if string == '24:00'
  array = string.split(':')
  hour = array[0].to_i
  minutes = array[-1].to_i
  remaining_minutes = hour * MINUTES_IN_HOUR
  minutes + remaining_minutes
end

after_midnight('00:00')# == 0
after_midnight('12:34') #== 754
after_midnight('24:00') #== 0


def before_midnight(string)
  return 0 if string == '00:00'
  array = string.split(':')
  hour = array[0].to_i
  minutes = array[-1].to_i
  remaining_minutes = hour * MINUTES_IN_HOUR
  total_mins = minutes + remaining_minutes
  MINUTES_IN_DAY -  total_mins
end

before_midnight('00:00') #== 0
before_midnight('12:34') #== 686
before_midnight('24:00') #== 0
