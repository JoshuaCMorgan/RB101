
def integer_to_string(integer)
  digits = []
  loop do
    integer, remainder = integer.divmod(10)
    digits << remainder
    break if integer == 0
  end
 p digits.reverse.join
end


integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
