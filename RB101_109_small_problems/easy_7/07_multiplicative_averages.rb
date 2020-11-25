def show_multiplicative_average(array)
  sum = array.inject {|sum, i| sum.to_f * i}
   average = sum / array.size
   puts format('%.3f', average)
end


# Alternative
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts format('%.3f', average)
end


show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
