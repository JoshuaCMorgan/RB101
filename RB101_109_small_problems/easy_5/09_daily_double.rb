def crunch(word)
  result = ''

  word.split('').each do |letter|
    if letter != result[-1]
      result << letter
    end
  end
  result
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
