# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator,
# A user passes in two numbers, and the calculator will keep computing
# the sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it,
# he got an error. Something about the limit variable.

#What's wrong with the code?

# variables are scoped at the method level.  Ruby can't see the variable.


def fib(f1, f2)
  limit = 15
  while f1 + f2 < limit
    sum = f1 + f2
    f1 = f2
    f2 = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# How would you fix this so that it works?
  # Put the variable `limit` inside the method definition
