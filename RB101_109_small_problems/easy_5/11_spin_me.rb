# You are given a method named spin_me that takes a string
# as an argument and returns a string that contains the same words,
# but with each word's characters reversed.
# Given the method's implementation,
# will the returned string be the same object
# as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# it will be a different object. Split method returns an array.
# the string is divided into substrings, which are their own
# object and placed inside the array.
# So, we are are not working with the originial object but
# two new objects. 
