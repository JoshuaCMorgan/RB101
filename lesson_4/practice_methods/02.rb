# Practice Problem 2
# How does count treat the block's return value? How can we find out?

result = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# count will evaluate the return value according to truthiness.
# For that element passed in, count will tally if
# the block's return value if truthy.
# So, we should get 2 since only the first two elements have a length less than 4

p result
