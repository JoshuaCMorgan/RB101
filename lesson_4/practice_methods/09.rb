# Practice Problem 9
# What is the return value of map in the following code? Why?

result = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end


# map iterates through collection creating a new array with the return values of the block.
# 'ant' does not have a size greater than 3, so if returns 'nil', which map puts into array.
# map then puts 'bear' into the new array.
# =>  [nil, "bear"]
