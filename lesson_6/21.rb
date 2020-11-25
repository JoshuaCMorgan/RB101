CARDS = %w(2 3 4 5 6 7 8 9 jack queen king ace).freeze
SUITS = %w(hearts diamonds spades clubs).freeze
WIN = 2
deck = []

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck(deck)
  SUITS.each do |suit|
    CARDS.each do |card|
      deck << [suit, card]
    end
  end
  deck = deck.shuffle
end

def initial_deal(player, dealer, deck)
  2.times do
    player << deck.slice!(0)
    dealer << deck.slice!(0)
  end
end

def initial_game_display(dealers_cards, players_cards, players_sum)
  prompt "Dealer has: #{dealers_cards[0]} and unknown card"
  prompt "Player has: #{players_cards}"
  prompt "Player's total: #{players_sum}"
end

def player_chooses
  players_choice = nil
  loop do
    prompt "Would you like to hit or stay? ('h' for hit or 's' for stay)"
    players_choice = gets.chomp.downcase
    break if %w(h s).include?(players_choice)
    prompt 'Please make a valid choice'
  end
  players_choice
end

def deal_card(cards, deck)
  cards << deck.slice!(0)
end

def display(cards)
  values = cards.map do |card|
    card[1]
  end
  prompt "You have #{values.join(' and ')}"
end

def display_dealer(cards)
  values = cards.map do |card|
    card[1]
  end
  prompt "Dealer has #{values.join(' and ')}"
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum = if value == 'ace'
            sum + 11
          elsif value.to_i.zero?
            sum + 10
          else
            sum + value.to_i
          end
  end

  values.select { |value| value == 'ace' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def display_total(sum)
  prompt "Your total: #{sum}"
end

def display_total_dealer(sum)
  prompt "Dealer total: #{sum}"
end

def busted?(sum)
  sum > 21
end

def play_again?
  choice = nil
  loop do
    prompt "Would you like to play again? ('y' for 'yes'. 'n' for 'no')"
    choice = gets.chomp.downcase
    break if %w(y n).include?(choice)
    prompt 'Must make a valid choice.'
  end
  choice == 'y'
end

def display_winner(players_sum, dealers_sum, scores)
  if players_sum > 21
    prompt 'You busted.'
    scores[:dealer] += 1
  elsif dealers_sum > 21
    prompt 'Dealer busted.'
    scores[:player] += 1
  elsif players_sum > dealers_sum
    prompt 'You win!'
    scores[:player] += 1
  elsif dealers_sum > players_sum
    prompt 'Dealer wins.'
    scores[:dealer] += 1
  else
    prompt 'It is a tie.'
  end
end

def game_winner?(scores)
  scores[:player] == WIN || scores[:dealer] == WIN
end

def end_of_round(players_cards, players_sum, dealers_cards, dealers_sum, scores)
  display_winner(players_sum, dealers_sum, scores)
  prompt "let's compare cards:"
  display(players_cards)
  display_total(players_sum)
  display_dealer(dealers_cards)
  display_total_dealer(dealers_sum)
end

def display_scores(scores)
  prompt '=====Scores======'
  prompt "Player: #{scores[:player]}"
  prompt "Dealer: #{scores[:dealer]}"
  prompt '================='
end
# Game Loop
loop do
  scores = {:player => 0, :dealer =>  0}

  loop do

    loop do
      break if game_winner?(scores)
      puts "loop 3"
      players_cards = []
      dealers_cards = []
      players_sum = 0
      dealers_sum = 0
      initialize_deck(deck)
      deck = deck.shuffle
      initial_deal(players_cards, dealers_cards, deck)
      players_sum = total(players_cards)
      dealers_sum = total(dealers_cards)
      display_scores(scores)
      initial_game_display(dealers_cards, players_cards, players_sum)

      loop do
        players_choice = player_chooses
        break if players_choice == 's'
        deal_card(players_cards, deck)
        display(players_cards)
        players_sum = total(players_cards)
        display_total(players_sum)
        break if busted?(players_sum)
      end

      if busted?(players_sum)
        end_of_round(players_cards, players_sum, dealers_cards, dealers_sum, scores)
        next
      else
        prompt "You chose to stay #{players_sum}"
      end

      loop do
        break if dealers_sum >= 17
        deal_card(dealers_cards, deck)
        display_dealer(dealers_cards)
        dealers_sum = total(dealers_cards)
        display_total_dealer(dealers_sum)
        break if busted?(dealers_sum)
      end

      if busted?(dealers_sum)
        end_of_round(players_cards, players_sum, dealers_cards, dealers_sum, scores)
        next
      else
        prompt 'Dealer chose to stay.'
      end

       end_of_round(players_cards, players_sum, dealers_cards, dealers_sum, scores)
    end

    break if game_winner?(scores)
    display_scores(scores)
  end
  
  display_scores(scores)
  break unless play_again?
end

prompt 'Thanks for playing.  Have a great day.'
