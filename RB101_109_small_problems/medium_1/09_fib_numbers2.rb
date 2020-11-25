def fibonacci(index)
  numbers = [1, 1]
  sum = 0
  n = 1

  return 1 if index < 2
  loop do
    break if n >= index - 1
    sum = numbers[n] + numbers[n-1]
    numbers << sum
    n +=1
  end

  numbers[-1]
end

# Alternative
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)
