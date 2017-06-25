# Car loan calculator

# Adds bullet point for each method
def prompt(input)
  Kernel.puts("=> #{input}")
end

# Makes sure each number is a valid number
def valid_number?(num)
  num.to_f() != 0
end

# Asks the user what the loan amount is and if a valid number is not entered then asks again.
loan_amount = ''
loop do
  prompt("What is the loan amount? (Please only type numbers.)")
  loan_amount = Kernel.gets().chomp().to_i()

  if valid_number?(loan_amount)
    break
  else
    prompt("Please enter only numbers.")
  end
end

# Asks what the APR is and then takes the input and divides by 100 to get a decimal number and if a valid number is not entered then asks again
monthly_interest_rate = ''
loop do
  prompt("What is the Annual Percentage Rate (APR)?")
  monthly_interest_rate = Kernel.gets().chomp().to_f()
  monthly_interest_rate /= 100

  if valid_number?(monthly_interest_rate)
    break
  else
    prompt("Please enter only numbers.")
  end
end

# Asks what the duration of the loan is in years and converts to months. If a valid number is not entered then asks again.
loan_duration = ''
loop do
  prompt("What is the loan duration in years?")
  loan_duration = Kernel.gets().chomp().to_i()
  loan_duration *= 12

  if valid_number?(loan_duration)
    break
  else
    prompt("Please enter only numbers.")
  end
end

monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-loan_duration))
puts prompt("Your monthly interest rate is $#{monthly_payment.round(2)} for a duration of #{loan_duration} months.")
