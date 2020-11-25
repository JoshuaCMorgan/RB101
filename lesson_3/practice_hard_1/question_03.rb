# In other practice problems,
# we have looked at how the scope of variables affects
# the modification of one "layer" when they are passed to another.

#To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# Above, the values are passed to the method.  Though the returned value
# of the method is the last line executed ("one"), that doesn't matter.
# What will be printed is the original assignment.
# The general, fundamental reason is that methods pass by value.
# So, variables are not passed,  the variables inside the method are of
# a new scope.  They live there and no where else.
# That's the default idea here.

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# Still doesn't matter. lines 44-46 will always print what's initialized
# unless inside the method you do some mutating such as `one.upcase!`

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# Now this will change.  We are doing a mutation with `gsub!`
# This will replace the first with the second inside the parantheses
