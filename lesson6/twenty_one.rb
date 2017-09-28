SUITS = %w(Hearts Diamonds Spades Clubs)
CARDS = %w(2 3 4 5 6 7 8 Jack Queen King Ace)

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []
  card1 = [SUITS.sample, CARDS.sample]
  card2 = []

  loop do
    suit = SUITS.sample
    card = CARDS.sample
    card2 << suit if card1.count('suit') == 0
    card2 << card if card1.count('card') == 0
    break if card2.size == 2
  end
  deck << card1
  deck << card2
  deck
end

def display(player_cards, dealer_cards)
  index = 0
  while index < player_cards.size
    prompt "Your card is #{player_cards[index][1]} of #{player_cards[index][0]}."
    index += 1
  end
  prompt "The dealers first card is #{dealer_cards[0][1]} of #{dealer_cards[0][0]}."
end

def another_card(deck)
  card = []
  loop do
    suit = SUITS.sample
    cards = CARDS.sample
    card << suit
    card << cards
    deck.each do |subarray|
      return card if subarray != card
    end
  end
end

def total(cards)
  values = cards.map { |card| card[1] }

  total = 0
  values.each do |value|
    if value == 'Ace'
      total += 11
    elsif value == 'Jack' || value == 'Queen' || value == 'King'
      total += 10
    else
      total += value.to_i
    end
  end

  # correct for aces
  number_of_aces = values.count('Ace')
  number_of_aces.times do
    total -= 10 if total > 21
  end
  total
end

def busted?(total)
  total > 21
end

def dealers_turn(dealer_cards)
  loop do
    if total(dealer_cards) < 17
      dealer_cards << another_card(dealer_cards)
    else
      break
    end
  end
end

def won?(player_total, dealer_total)
  if busted?(player_total)
    prompt "Sorry you busted and lost the game."
  elsif dealer_total > 21
    prompt "Dealer busted, Player won!"
  elsif player_total > dealer_total
    prompt "Player won!"
    prompt "Player had a score of #{player_total} and dealer had a score of #{dealer_total}."
  elsif player_total < dealer_total
    prompt "Dealer won!"
    prompt "Dealer had a score of #{dealer_total} and player had a score of #{player_total}."
  else
    prompt "It's a tie!"
    prompt "You both had a score of #{player_total}."
  end
end

prompt "Welcome to the game Twenty-One!"

player_count = 0
dealer_count = 0

loop do
  player_cards = initialize_deck
  dealer_cards = initialize_deck
  display(player_cards, dealer_cards)

  answer = nil
  loop do
    prompt "Do you want to hit or stay?"
    answer = gets.chomp
    if answer == 'hit'
      player_cards << another_card(player_cards)
      display(player_cards, dealer_cards)
      break if busted?(total(player_cards))
    elsif answer.downcase == 'stay'
      prompt "You chose to stay!"
      break
    end
  end

  dealers_turn(dealer_cards)

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  won?(player_total, dealer_total)

  # Adds a point to the players or dealers score if they won
  if player_total > dealer_total && !busted?(player_total)
    player_count += 1
  elsif dealer_total < player_total && !busted?(dealer_total)
    dealer_count += 1
  end

  # Ends the game if either the player or dealer reach 5 wins
  if player_count == 5
    prompt "Player is ultimate winner!"
    break
  elsif dealer_count == 5
    prompt "Dealer is ultimate winner!"
    break
  end

  prompt "Do you want to play again?"
  play_again = gets.chomp
  break if play_again.downcase == 'no'
end

prompt "Thanks for playing!"
