
# one way
def sum(number)
  integer.digits.inject {|sum, number| sum + number }
end

# or another
def sum(number)
  integer.digits.sum
end
 # or another
 def sum(number)
  str = number.to_s
  array = str.chars
  new_array = array.map {|digit| digit.to_i }
  total = new_array.reduce {|sum, digit| sum += digit}
  total
end



puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
