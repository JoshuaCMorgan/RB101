def sum_square_difference(number)
  numbers = []
  1.upto(number) do |num|
    numbers << num
  end
  numbers
  sum_of_numbers = numbers.inject(:+)
  sum_squared = sum_of_numbers ** 2
  sum_of_squared_numbers = numbers.inject {|sum, num| sum + num**2 }

  sum_squared - sum_of_squared_numbers
end

# Alternative
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

sum_square_difference(3) == 22
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150
