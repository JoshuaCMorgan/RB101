name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?

# line two is assigment.  the variable references
# the same object as the variable it is assigned to does.

# Thus, both variables reference the same object.
# A mutation is done to the object.
# Since both variales reference the same object, we will see the same result.
