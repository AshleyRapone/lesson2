# Ask the user for two numbers
# Ask the user for an operation to perform
# Perorm the operation on the two numbers
# Output the result


# Method to make each message print out with a bullet point
def prompt(message)
  Kernel.puts("=> #{message}")
end

# Method to make sure that each number is valid.
# It does this by taking the number and converting it from a string to an integer,
# If a string is entered then it will return 0
# If it does not equal 0 then it is an integer.
def valid_number?(num)
  num.to_i() != 0
end

# Method to tell the computer what to print based on what number the user inputted
def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# Message greets user and asks for name
# If the user did not enter a name then a prompt will show up to make sure it is a valid name until you enter a string
prompt("Welcome to Calculator! Enter you name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

# Greets user
prompt("Hi #{name}!")

# Asks for a first number and checks to see if its a valid number and if it isnt it will ask for the first number again
loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("That isn't a valid number")
    end
  end

# Asks for a second number and checks to see if its a valid number and if it isnt it will ask for the second number again
  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("That isn't a valid number")
    end
  end

# a question that is assigned to a variable so that it is formatted nicely
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1)add
    2)subtract
    3)multiply
    4)divide
  MSG

# Asks the user a question
  prompt(operator_prompt)

# If the user entered the numbers 1,2,3 or 4 then move to next prompt.
# If they did not enter numbers 1,2,3 or 4 then give prompt that says you must choose a number from 1 to 4
  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  # Tells the user what the computer is doing
  prompt("#{operation_to_message(operator)} the two numbers...")

  # result variable holds scenarios as to what the computer does if the user inputted a certain number
  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  # The prompt will say what the result is based on what the user inputted
  prompt("The result is #{result}")

  # Asks the user if you want to perform another calculation
  # The loop will keep repeating the main loop as long as the user inputs an answer that starts with a y
  # If the user does not input a string that starts with a y then a message will say goodbye to the user
  prompt("Do you want to perform another calculaion? (Y to caculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for using the calculator. Good Bye!")
