
 def find_fibonacci_index_by_length(number)
  numbers = [1, 1]
  sum = 0
  n = 1
  index = number

  loop do
    break if index == sum.to_s.length
    sum = numbers[n] + numbers[n-1]
    numbers << sum
    n +=1
  end

  p numbers
  p numbers.index(sum)
 end

 find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
 find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
 find_fibonacci_index_by_length(10) == 45
 find_fibonacci_index_by_length(100) == 476
 find_fibonacci_index_by_length(1000) == 4782
 # find_fibonacci_index_by_length(10000) == 47847
