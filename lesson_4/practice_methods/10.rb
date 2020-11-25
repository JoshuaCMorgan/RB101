# Practice Problem 10
# What is the return value of the following code? Why?

result = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# map returns a new array with the return value from the block.
# on the first pass, '1' will be put into the array.
# on the remaining, 'puts' is the last statement evaluated.
# so, 'nil' gets placed since puts method returns a nil value.
# => [1, nil, nil]
