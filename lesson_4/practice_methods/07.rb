# Practice Problem 7
# (1) What is the block's return value in the following code?
# (2) How is it determined?
# (3) Also, what is the return value of any? in this code and what does it output?

result = [1, 2, 3].any? do |num|
  'hi'
end

# (1) The block's return value is boolean true.
# (2) any? will pass in each element
    # but not before evaluating the return value of the block on each pass.
    # any? will stop iterating when the block returns a value other than 'false' or 'nil'.
# (3) the return value of any? is true. The output is '1'.
p result
