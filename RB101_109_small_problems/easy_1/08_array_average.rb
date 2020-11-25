# Prior to this exercise, I was not introduced to Enumerable#reduct/inject
#First example (declarative)
def average(array)
total = array.sum
average = (total / array.count)
average
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#second example (brute)
def average(array)
  sum = 0
  array.each do |num|
  sum += num
  end
  sum / array.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
