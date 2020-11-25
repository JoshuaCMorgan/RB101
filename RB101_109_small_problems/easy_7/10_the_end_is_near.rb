def penultimate(string)
  string.split[-2]
end

# Alternative
def penultimate(words)
  words_array = words.split
  words_array[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
