# Practice Problem 6
# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# pop removes the last element of the called collection.
# pop also returns that element ('caterpillar')
# size is being called on the return value of pop ('caterpillar').
# strings are integer based.
# So, size will return an integer for the number of characters (11).
