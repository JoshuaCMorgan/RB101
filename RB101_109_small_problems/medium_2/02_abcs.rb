BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
          ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
          ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
def block_word?(string)
  string.upcase!
  answer = ''

  string.chars.each do |w_letter| #
    BLOCKS.each do |set|
      set.each do |b_letter|
        if w_letter == b_letter
          answer << w_letter
          BLOCKS.delete(set)
        end
      end
    end
  end

answer == string
end

# Alternative
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p  block_word?('BATCH') == true
p  block_word?('BUTCH') == false
p  block_word?('jest') == true
