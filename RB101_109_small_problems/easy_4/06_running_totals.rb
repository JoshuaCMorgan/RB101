def running_total(array)
  result = []
  sum = 0
  array.each do |number|
    result << sum += number
  end
  result
end

# Further Exploration
def running_total(array)
  sum = 0
  array.each_with_object([]) do |value, result |
    result << sum += value
  end

end


running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
