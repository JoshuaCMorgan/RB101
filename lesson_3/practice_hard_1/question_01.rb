# What do you expect to happen when the greeting variable
# is referenced in the last line of the code below?

# I expect nothing to happen.  True has a boolean value of true
# but false can't be true. It has a boolean value of false
# So, if conditions return nil when if doesn't succeed.
if false
  greeting = “hello world”
  puts greeting
end

greeting

# Try this...
if false
  x = 1
end
p x
p y
