def xor? (value1, value2)
  if value1 && !value2
    return true
  elsif value2 and !value1
    return true
  else
    return false
  end
end




xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
