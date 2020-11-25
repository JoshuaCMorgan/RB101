def sequence(digit)
  numbers = []
  1.upto(digit) do |number|
    numbers << number
  end
  p numbers
end

# Alternative
def sequence(number)
  (1..number).to_a
end



sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
