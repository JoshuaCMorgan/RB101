1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.

CARDS = %w(2 3 4 5 6 7 8 9 jack queen king ace)
SUITS = %w(hearts diamonds spades clubs)
players_cards = []
dealers_cards = []
player_sum = 0
dealer_sum = 0

### THE METHODS
deal card(opponent)
initial_deal(player, dealer)

total(cards)
player_turn
dealer_turn
busted?
result_of_game
display_result_of_cards



# THE PROCESS
initial_deal
total(players_cards)
total(dealers_cards)
display_totals

player_turn
dealer_turn
