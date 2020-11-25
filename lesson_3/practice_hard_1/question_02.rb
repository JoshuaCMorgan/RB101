#What is the result of the last line in the code below?

greetings = { a: 'hi' }             # We've created a hash with one key/value pair
informal_greeting = greetings[:a]   # assigning the variable to the value
informal_greeting << ' there'       # string concatenation

# It will print "hi there".
# they both point to the same object_id
puts informal_greeting  #  => "hi there"
puts greetings

This may help.
a = "hello"
b = a
p a.object_id
p b.object_id
b << ' there'
puts b
puts a

# Output
# 70246707354020
# 70246707354020
# hello there
# hello there
