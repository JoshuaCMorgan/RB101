def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |number|
    if number % 3 == 0 && number % 5 == 0
      result << "FizzBuzz"
    elsif number % 3 == 0
      result << "Fizz"
    elsif number % 5 == 0
      result << "Buzz"
    else
      result << number
    end
  end
  p result
end

# Alternative
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz