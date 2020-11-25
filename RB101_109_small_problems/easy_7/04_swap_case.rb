UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def swapcase(string)
  result = ''
  string.each_char do |char|
    if UPPERCASE_CHARS.include?(char)
      result << char.downcase
    elsif LOWERCASE_CHARS.include?(char)
      result << char.upcase
    else
      result << char
    end
  end
  result
end

#alternative
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end


swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
