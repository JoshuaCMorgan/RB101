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

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if WIN.any? { |k, v| k == player && v.include?(computer) }
    prompt("You won!")
  elsif WIN.any? { |k, v| k == computer && v.include?(player) }
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

prompt("Welcome to 'Rock, Paper, Scissors, Lizards, Spock'")
prompt("The best of 5 matches wins the tourney.")
prompt("Let's start!")
Kernel.puts('')

loop do
  player_score = 0
  computer_score = 0

  while player_score <= 5 && computer_score <= 5
    player_choice = ''
    loop do
      prompt("choose one:")
      VALID_CHOICES.each { |k, v| puts ">> #{k} for #{v}." }
      player_choice = Kernel.gets().chomp()

      if VALID_CHOICES.key?(player_choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.keys.sample

    prompt("You choice: #{player_choice}. Computer chose: #{computer_choice}")

    display_results(player_choice, computer_choice)

    if WIN.any? { |k, v| k == player_choice && v.include?(computer_choice) }
      player_score += 1
    elsif WIN.any? { |k, v| k == computer_choice && v.include?(player_choice) }
      computer_score += 1
    end

    if player_score == 5
      prompt('you win the tourny')
      break
    elsif computer_score == 5
      prompt('computer wins tourney')
      break
    end

    p player_score
    p computer_score
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.  Good bye!")
