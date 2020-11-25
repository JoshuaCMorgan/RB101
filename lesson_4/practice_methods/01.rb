# Practice Problem 1
# What is the return value of the select method below? Why?

result = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

# select will pass in to the block all elements of the array, one at a time.
# the method will look at the return value of the block.
# If the return value is truthy, then select will put that array element
# into the created array.
# So, the basis of selection is truthiness and not boolean true alone. 
p result
