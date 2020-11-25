# Practice Problem 4
# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# this meathod doesn't return the calling ('original') collection.
# this method returns the object passed in as an argument.
# When returned, the object will have been updated.
# in this case, we will have a hash that looks like:
# => { "a" => "ant", "b" => "bear", "c" => "cat" }
