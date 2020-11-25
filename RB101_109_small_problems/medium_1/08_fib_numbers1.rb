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
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
