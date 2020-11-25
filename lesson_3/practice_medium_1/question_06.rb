# In an earlier practice problem we saw that depending on a method
# to modify its arguments can be tricky:
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end
#
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)
#
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"
#
# # We learned that whether the above "coincidentally"
# # does what we think we wanted "depends" upon what is going on inside the method.
#
# # How can we refactor this practice problem to make the result
# # easier to predict and easier for the next programmer to maintain?
#
# # My beginner solution
# def tricky_method_a(an_array_param)
#   an_array_param += ["rutabaga"]
# end
#
# def tricky_method_s(a_string_param)
#   a_string_param += " rutabaga"
# end
#
# my_string = "pumpkins"
# my_array = ["pumkins"]
#
#
# puts "My string looks like this now: #{tricky_method_s(my_string)}"
# puts "My array looks like this now: #{tricky_method_a(my_array)}"

# Solution that combines new learning: multiple assignments and return values.
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The basic concept
def multiple_return
  return ["Hello", "World"]
end

a, b = multiple_return    #this is where the magic happens...

puts "return a: #{a}"
puts "return b: #{b}"
