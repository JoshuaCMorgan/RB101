def balanced?(string)
array = []

string.chars.each do |char|
  if char == "(" || char == ")"
    array << char
  end
end

 if array[0] == ")"
   return false
 end

midpoint = array.size / 2 - 1

 left_side = array[0..midpoint]
 right_side = array[(midpoint + 1)..-1]
  right_side = right_side.reverse
right_reverse = []

right_side.each do |el|
  if el == "("
    right_reverse << ")"
  else
    right_reverse << "("
  end
end
  right_reverse
left_side == right_reverse
end

# Alternative
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
