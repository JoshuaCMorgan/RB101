# Ben was tasked to write a simple ruby method to determine
# if an input string is an IP address representing
# dot-separated numbers. e.g. "10.4.5.11".
# He is not familiar with regular expressions.
# Alyssa supplied Ben with a method called is_an_ip_number?
# that determines if a string is a numeric string between 0 and 255
# as required for IP numbers and asked Ben to use it.

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

#Alyssa reviewed Ben's code and says "It's a good start,
# but you missed a few things.
# You're not returning a false condition,
# and you're not handling the case that
# there are more or fewer than 4 components to the IP address
#(e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code.
# One, when he breaks on line 13, the method will return true.
# but he really wants for it to return false.
# two, he needs to check if the array has 4 elements and 4 elements only
# before moving on.
# Methods return the last line executed, so we need to invoke return
# for the false conditions.
# so, unless the condition is true, he can't move forward, return false.
# If he gets through, then true should return. Otherwise, you get nil.
