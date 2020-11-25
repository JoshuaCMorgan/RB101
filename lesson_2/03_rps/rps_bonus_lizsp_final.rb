VALID_CHOICES = { "r" => 'rock',
                  'l' => 'lizard',
                  'sp' => 'spock',
                  'sc' => 'scissors',
                  'p' => 'paper' }

WIN = { 'r' => ['l', 'sc'],
        'l' => ['p', 'sp'],
        'sp' => ['sc', 'r'],
        'sc' => ['p', 'l'],
        'p' => ['r', 'sp'] }

WIN_SCORE = 5

scores = { player: 0, computer: 0 }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_welcome_message
  prompt("Welcome to 'Rock, Paper, Scissors, Lizards, Spock'")
  prompt("The best of 5 matches wins the tourney.")
  prompt("Let's start!")
  Kernel.puts('')
end

def retrieve_user_move
  player_choice = ''
  loop do
    prompt("choose one:")
    VALID_CHOICES.each { |k, v| puts ">> #{k} for #{v}." }
    player_choice = Kernel.gets().chomp().downcase()

    if VALID_CHOICES.key?(player_choice)
      return player_choice
    else
      prompt("That's not a valid choice.")
    end
  end
end

def retrieve_computer_move
  VALID_CHOICES.keys.sample
end

def diplay_choices(player_choice, computer_choice)
  prompt("You choice: #{player_choice}. Computer chose: #{computer_choice}")
end

def won_game?(first, second)
  WIN.any? { |k, v| k == first && v.include?(second) }
end

def display_player_won
  prompt("You won!")
end

def diplay_computer_won
  prompt("Computer won.")
end

def display_tie
  prompt("It's a tie.")
end

def display_results(player, computer)
  if won_game?(player, computer)
    display_player_won()
  elsif won_game?(computer, player)
    diplay_computer_won()
  else
    display_tie()
  end
end

def update_score(player_choice, computer_choice, scores)
  if WIN.any? { |k, v| k == player_choice && v.include?(computer_choice) }
    scores[:player] += 1
  elsif WIN.any? { |k, v| k == computer_choice && v.include?(player_choice) }
    scores[:computer] += 1
  end
  scores
end

def current_score(scores)
  prompt("your score: #{scores[:player]}")
  prompt("computer score: #{scores[:computer]}")
  puts
end

def match_ended?(scores)
  scores[:player] >= WIN_SCORE || scores[:computer] >= WIN_SCORE
end

def won_match?(scores)
  if scores[:player] == WIN_SCORE
    prompt('you win the tourny')
  elsif scores[:computer] == WIN_SCORE
    prompt('computer wins tourney')
  end
end

def valid_play_again_answer?
  prompt("Do you want to play again? ('y' for Yes. Hit any key to exit.)")
  answer = Kernel.gets().chomp()
  answer.downcase().start_with?('y')
end

def display_goodbye_message
  prompt("Thank you for playing.  Good bye!")
end

system('clear') || system('cls')
display_welcome_message()

loop do

  until match_ended?(scores)
    player_choice = retrieve_user_move
    computer_choice = retrieve_computer_move
    system('clear') || system('cls')
    diplay_choices(player_choice, computer_choice)
    display_results(player_choice, computer_choice)
    scores = update_score(player_choice, computer_choice, scores)
    current_score(scores)
    won_match?(scores)
  end

  break unless valid_play_again_answer?()
end

display_goodbye_message
