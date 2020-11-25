# What will the following code print, and why?
# Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# it should print the result of the second method call.
# Even though method << is non-mutating, upcase! is.
# So, the method call upcase! will reach back to the origin.
# This is because array2 is holding references
# to the values of each element in array1.
