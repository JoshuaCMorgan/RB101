def stringy(number)
  string = ''
  number.times do |num|
    if num.even?
      string << '1'
    elsif num.odd?
      string << '0'
    end
  end
  string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
