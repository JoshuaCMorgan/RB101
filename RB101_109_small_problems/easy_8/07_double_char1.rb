def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end


repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
