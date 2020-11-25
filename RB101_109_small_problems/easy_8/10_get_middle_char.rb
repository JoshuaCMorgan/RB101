def center_of(string)
  string_length = string.length
  middle_index = string_length / 2
  middle_char = if string_length.odd?
    string[middle_index]
  else
    string.slice(middle_index - 1, 2)
  end
  middle_char
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
