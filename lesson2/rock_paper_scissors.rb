VALID_CHOICES = %w(r p sc l sp)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Determines if user or computer was in first or second
def win?(first, second)
  (first == 'r' && second == 'sc') ||
    (first == 'p' && second == 'r') ||
    (first == 'sc' && second == 'p') ||
    (first == 'r' && second == 'l') ||
    (first == 'l' && second == 'sp') ||
    (first == 'sp' && second == 'sc') ||
    (first == 'sc' && second == 'l') ||
    (first == 'l' && second == 'p') ||
    (first == 'p' && second == 'sp') ||
    (first == 'sp' && second == 'r')
end

# Prints who wins based on the results of the win method
def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# Prints out appropiate word based on what the user or computer picked
def result(item)
  case item
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  end
end

player_score = 0
computer_score = 0

loop do
  choice_prompt = <<-MSG
  Please type:
  r for rock
  p for paper
  sc for scissors
  l for lizard
  sp for spock
  MSG
  choice = ''

  loop do
    prompt("Choose one: rock, paper, scissors, lizard, or spock")
    prompt(choice_prompt)
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  # Win counter
  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  prompt("You chose: #{result(choice)}; Computer chose: #{result(computer_choice)}")

  if player_score == 5
    prompt('You win the match!')
    break
  elsif computer_score == 5
    prompt('Computer wins the match. GAME OVER!')
    break
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for playing. Good bye!")
