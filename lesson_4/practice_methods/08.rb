# Practice Problem 8
# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# take creates a new array with selected elements of the calling collection.
# The integer passed in defines the number.
# in this case, take will create a new array with the first two elements.
# => [1, 2]
# take is NOT destructive. 
