# Practice Problem 3
# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
   puts num
end

# return will create a new array.
# return assesses the return value of the block.
# if the return value is other than 'truthy',or that is 'falsey'
# then the element gets put into the new array.
# since the last expression evaluated is puts method and it returns nil,
# each element will be placed in the new array.
