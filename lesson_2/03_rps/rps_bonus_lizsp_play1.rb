WIN = { 'r' => ['l', 'sc'],
        'l' => ['p', 'sp'],
        'sp' => ['sc', 'r'],
        'sc' => ['p', 'l'],
        'p' => ['r', 'sp'] }

player = 'l'
computer = 'r'
def player_won?(player, computer)
  WIN.any? { |k, v| k == player && v.include?(computer) }
end

def computer_won?(computer, player)
  WIN.any? { |k, v| k == computer && v.include?(player) }
end

def display_results(player, computer)
  if player_won?(player, computer)
    puts "yes"
  elsif computer_won?(computer, player)
    puts "no"
  end
end

display_results(player, computer)
