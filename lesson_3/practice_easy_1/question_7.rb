# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

# This gives us a string that looks like a "recursive" method call:

add_eight(add_eight(add_eight(add_eight(add_eight(number)))))

# (My added notes:
#  `gsub` will take the first string and replace it with the second string.
# After the first replacement, we have the string `"add_eight(number)"`.
# the `gsub` method will now substitute out the string `number`
# inside the string `add_eight(number)` and replace it with `add_eight(number)`.
# The result will be `"add_eight(add_eight(number)"` This will go on for 5 times.)

# Question
# If we take advantage of Ruby's `Kernel#eval` method to have it execute this string as if it were a "recursive" method call

eval(how_deep)

# what will be the result?
42
# Note: The `Kernel#eval` method is a rarely used Ruby method.
# You're not expected to understand how it works at this stage.

# My added notes:
#Let's look at this in stages

number = 2
how_deep = "number"

#Because of eval(how_deep), we now have

how_deep = 2

#Going into the next section, we now will have

5.times { 2.gsub!(2, add_eight(2)) }

eval(how_deep) # => 10

#next

(2, add_eight(2))
(10, add_eight(10)) # => 18
(18, add_eight(18)) # => 26
(26, add_eight(26)) # => 34
(34, add_eight(34)) # => 42
