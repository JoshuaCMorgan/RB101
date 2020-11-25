def reverse(array)
  result = []
  count = 1
  while count <= array.size
    result << array[-count]
    count += 1
  end
  p result
end

#Alternative
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true
