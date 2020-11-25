# Number validation.

# Suppose we're building a scientific calculator, and we now need to account
# for inputs that include decimals.
# How can we build a validating method, called number?,
# to verify that only valid numbers -- integers or floats -- are entered?

# We'll create a method that tests to see
# whether the input is either a number or a float.

def number?(input)
  integer?(input) || float?(input)
end

# We already have the integer? method,
# so all we need to do is implement a float? method.

# Option 1 -- just like before, this is the easiest way to check for floats.

def float?(input)
  input.to_f.to_s == input
end

# This method has an edge case though:

2.2.2 :001 > '1.' == '1.'.to_f.to_s
=> false
2.2.2 :002 > '1.'.to_f
=> 1.0

# As you can see, to_f converts 1. to 1.0,
# which does not match the original string.
# for now, this will be fine.
