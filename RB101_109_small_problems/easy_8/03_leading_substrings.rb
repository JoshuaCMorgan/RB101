def substrings_at_start(string)
  result = []
  characters = string.chars

  characters.each_index do |index|
    result << characters[0..index].join
  end

  result
end

# Alternative
def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
