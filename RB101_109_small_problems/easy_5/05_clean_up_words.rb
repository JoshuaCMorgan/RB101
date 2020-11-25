def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '
