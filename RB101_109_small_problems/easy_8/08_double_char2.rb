def double_consonants(str)
  results = ''
  str.each_char do |char|
    if char.downcase =~ /[a-z&&[^aeiou]]/
      results << char * 2
    else
      results << char
    end
  end
  results
end

# Alternative
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
