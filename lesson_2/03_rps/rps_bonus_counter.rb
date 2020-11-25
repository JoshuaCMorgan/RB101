VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end



loop do
  player_score = 0
  computer_score = 0


  while player_score <= 5 && computer_score <= 5
    player_choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      player_choice = Kernel.gets().chomp()

      if VALID_CHOICES.include?(player_choice)
        break
      else
        prompt("That's not a valid choice.")
      end

    end

    computer_choice = VALID_CHOICES.sample

    Kernel.puts("You choice: #{player_choice}; Computer chose: #{computer_choice}")

    display_results(player_choice, computer_choice)

    if win?(player_choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, player_choice)
      computer_score += 1
    end

    if player_score == 5
      prompt('you win the tourny')
    elsif computer_score == 5
      prompt('computer wins tourney')
    end

    p player_score
    p computer_score
  end



  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end
prompt ("Thank you for playing.  Good bye!")
