```ruby
require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = '0'.freeze

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(message)
  puts "=> #{message}"
end

WIN_SCORE = 5
ORDER_OPTIONS = ['Player', 'Computer', 'Choose']

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_chooses_first_mover
  answer = ''
  loop do
    prompt("Would you like to make the first move? ('y' for yes. 'n' for no.)")
    answer = Kernel.gets().chomp().downcase
    break if ['y', 'n'].include?(answer)
    prompt("Please make a valid choice")
  end
  answer == 'y'? 'Player' : 'Computer'
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

def joinor(array, punctuation = ', ', conjuction = 'or')
  if array.size == 1
    return array[0]
  end

  if array.size == 2
    return array.join(" #{conjuction} ")
  end

  first =  array[0..-2].join("#{punctuation}")
  second = " #{conjuction} " + array[-1].to_s
  array = first + second

  array
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def choose_order_of_play
  ORDER_OPTIONS.sample
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    puts "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    puts "Sorry, that's not a valide choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # defense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # offense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if brd[5] == INITIAL_MARKER
    square = 5
  end
  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won_match?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score!(winner, score)
  case winner
    when 'Player'
      score['Player'] += 1
    when 'Computer'
      score['Computer'] += 1
  end
end

def current_score(score)
  prompt("Player Score: #{score['Player']}")
  prompt("Computer Score: #{score['Computer']}")
  puts
end

def won_match?(scores)
  if scores['Player'] == WIN_SCORE
    prompt('You win the game!')
  elsif scores['Computer'] == WIN_SCORE
    prompt('Computer wins game!')
  end
end

def match_ended?(scores)
  scores['Player'] >= WIN_SCORE || scores['Computer'] >= WIN_SCORE
end

def valid_play_again_answer?
  prompt("Do you want to play again? ('y' for Yes. Hit any key to exit.)")
  answer = Kernel.gets().chomp()
  answer.downcase().start_with?('y')
end

loop do
  scores = {"Player" => 0, "Computer" => 0}

  loop do
    board = initialize_board
    current_player = choose_order_of_play
    if current_player == 'Choose'
      current_player = player_chooses_first_mover
    end

    loop do
      display_board(board)
      current_score(scores)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won_match?(board) || board_full?(board)
    end
    display_board(board)

    update_score!(detect_winner(board), scores)
    break if match_ended?(scores)
  end

  won_match?(scores)
  break unless valid_play_again_answer?()
end

prompt('Thanks for playing tic tac toe!')
```

